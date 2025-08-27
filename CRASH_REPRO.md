# LSP Crash - Minimal Reproduction

This is the simplest possible reproduction of the Mojo LSP circular reference crash.

## The Issue
The Mojo LSP crashes when it encounters circular references across multiple files, even though the compiler handles them fine.

## Minimal Reproduction: `crash_repro/`

Just 3 tiny files, 2 lines each:

### `crash_repro/node.mojo`
```mojo
from crash_repro import NodeVariant
struct Node:
    var data: NodeVariant
```

### `crash_repro/concrete.mojo` 
```mojo
from crash_repro.node import Node
struct ConcreteNode:
    var children: List[Node]
```

### `crash_repro/__init__.mojo`
```mojo
from crash_repro.concrete import ConcreteNode
alias NodeVariant = ConcreteNode
```

## The Circular Dependency
1. `Node` imports `NodeVariant` from `__init__.mojo`
2. `__init__.mojo` imports `ConcreteNode` from `concrete.mojo` 
3. `concrete.mojo` imports `Node` from `node.mojo`
4. **LSP crashes** 🔥

## Result
- **LSP**: All 3 files show: *"A crash happened in the Mojo Language Server"* 🔥
- **Compiler**: Runs perfectly! See `main.mojo` for proof ✅

```bash
$ pixi run mojo run crash_repro/main.mojo
Creating ConcreteNode...
Creating Node with ConcreteNode...
✅ SUCCESS: Compiler handles circular references perfectly!
The LSP crashes, but the code compiles and runs fine.
```

This proves it's purely an LSP issue, not a compiler limitation.
