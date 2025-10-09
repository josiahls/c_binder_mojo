# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.declarations import AstDeclarationVariant
from c_binder_mojo.ast.declarations.typedef_decl_node import TypedefDeclNode


struct SymbolTypes:
    alias Enum: String = "Enum"
    alias Struct: String = "Struct"
    alias Union: String = "Union"
    alias Typedef: String = "Typedef"
    alias Function: String = "Function"
    alias Variable: String = "Variable"
    alias Macro: String = "Macro"
    alias EnumConstant: String = "EnumConstant"

    @staticmethod
    fn is_in(symbol_type: String) raises -> Bool:
        return symbol_type in [
            Self.Enum,
            Self.Struct,
            Self.Union,
            Self.Typedef,
            Self.Function,
            Self.Variable,
            Self.Macro,
            Self.EnumConstant,
        ]


struct _SymbolRegistry(Movable):
    # Mem address and record inc name
    var _symbol_to_type: Dict[String, String]

    fn __init__(out self):
        self._symbol_to_type = Dict[String, String]()

    fn add_symbol(mut self, symbol: String, symbol_type: String) raises:
        if not SymbolTypes.is_in(symbol_type):
            raise Error(
                "Symbol type not found: ",
                symbol_type,
                " for symbol: ",
                symbol,
                " in SymbolTypes.",
            )
        if symbol in self._symbol_to_type:
            raise Error(
                "Symbol already exists: ", symbol, " in SymbolRegistry."
            )
        self._symbol_to_type[symbol] = symbol_type

    fn is_in(self, symbol: String) raises -> Bool:
        return symbol in self._symbol_to_type

    fn get_symbol_type(self, symbol: String) raises -> String:
        if symbol not in self._symbol_to_type:
            raise Error("Symbol not found: ", symbol, " in SymbolRegistry.")
        return self._symbol_to_type[symbol]

    @staticmethod
    fn init_symbol_registry() -> Self:
        return Self()


alias SymbolRegistry = _Global[
    "SymbolRegistry",
    _SymbolRegistry.init_symbol_registry,
]
