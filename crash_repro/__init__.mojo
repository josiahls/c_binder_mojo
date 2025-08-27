# This creates the circular dependency that crashes LSP
from crash_repro.concrete import ConcreteNode

alias NodeVariant = ConcreteNode  # Simple - no need for actual Variant
