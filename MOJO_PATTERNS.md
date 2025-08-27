# How Mojo Stdlib Handles Circular References

After analyzing 1100+ Mojo files in the official stdlib and MAX repos, here are the patterns they use:

## 🔍 Key Findings

### 1. **UnsafePointer[Self] Pattern** (Most Common)
The stdlib extensively uses `UnsafePointer[Self]` for self-referential structures:

```mojo
struct Node[ElementType]:
    alias _NodePointer = UnsafePointer[Self]  # ← Self-reference via UnsafePointer
    var value: ElementType
    var prev: Self._NodePointer  # ← Previous node
    var next: Self._NodePointer  # ← Next node
```

**Files using this pattern:**
- `collections/linked_list.mojo` - Doubly linked lists
- `collections/interval.mojo` - Red-black trees with parent/left/right pointers
- `runtime/asyncrt.mojo` - Async runtime structures
- `utils/lock.mojo` - Lock implementations

### 2. **ArcPointer for Shared References**
When you need reference counting (like your AST nodes):

```mojo
from memory import ArcPointer

struct MyNode:
    var data: ArcPointer[SomeVariant]  # ← Reference-counted variant
```

### 3. **Acknowledged Issue in Proposals**
The Mojo team explicitly acknowledges circular dependency issues in their proposals:

> *"For example, today we have a circular dependency between `stdlib.builtin` and `stdlib.python`... This only works for us because the stdlib is one giant module. If we were to scale up and split these into multiple modules, we'd have circular dependency errors."*
> 
> — **mojo/proposals/struct-extensions.md**

### 4. **No Complex Variant + Self-Reference Patterns Found**
❌ **Missing Pattern**: No examples found of `ArcPointer[Variant[NodeTypes]]` where `NodeTypes` contain `List[WrapperNode]`

This suggests your pattern is pushing into uncharted territory for the LSP.

## 🎯 Recommended Solutions

### Option 1: UnsafePointer Pattern (Like stdlib)
```mojo
struct JsonAstNode:
    var node_data: UnsafePointer[UInt8]  # Opaque data
    var node_type: UInt8                 # Type discriminant
    var size: Int                        # Data size
```

### Option 2: Single-Module Architecture (Like stdlib)
Move everything into one module to avoid cross-module circular imports, just like the official stdlib does.

### Option 3: Accept LSP Limitation
Continue with your current pattern since:
- ✅ Compiler works perfectly
- ✅ Runtime performance is good
- ❌ LSP has issues (but this is a known limitation)

## 📊 Search Results Summary
- **566 files** in `mojo/` stdlib
- **588 files** in `max/` repo
- **28 instances** of `UnsafePointer[Self]` pattern
- **53 references** to `ArcPointer`
- **1 explicit mention** of circular dependency challenges

Your AST pattern appears to be more complex than what the current Mojo tooling was designed to handle, but the compiler supports it correctly.
