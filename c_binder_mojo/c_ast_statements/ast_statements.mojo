# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.root import Root
from c_binder_mojo.c_ast_statements.place_holder import PlaceHolder
from c_binder_mojo.c_ast_statements.multi_line_comment import MultiLineComment
from c_binder_mojo.c_ast_statements.single_line_comment import SingleLineComment
from c_binder_mojo.c_ast_statements.blank_space import BlankSpace
from c_binder_mojo.c_ast_statements.ifndef import IfNDef
from c_binder_mojo.c_ast_statements.define import Define
from c_binder_mojo.c_ast_statements.macro_else import MacroElse
from c_binder_mojo.c_ast_statements.endif import EndIf
from c_binder_mojo.c_ast_statements.typedef import TypeDef
from c_binder_mojo.c_ast_statements.include import Include
from c_binder_mojo.c_ast_statements.cstruct import CStruct
from c_binder_mojo.c_ast_statements.cstruct_field import CStructField, is_valid_scope
from c_binder_mojo.c_ast_statements.enum_field import EnumField, is_valid_enum_scope
from c_binder_mojo.c_ast_statements.scope import Scope, is_scopeable,make_scopeable
from c_binder_mojo.c_primitives import TokenBundle

alias AstStatements = Variant[
    Root,
    PlaceHolder,
    MultiLineComment,
    SingleLineComment,
    BlankSpace,
    IfNDef,
    Define,
    MacroElse,
    EndIf,
    TypeDef,
    Include,
    Scope,
    CStruct,
    CStructField,
    EnumField
]

fn to_replace(read x:AstStatements, token_bundle: TokenBundle) -> AstStatements:
    # if MultiLineComment.do_replace(x,token_bundle):
    #     return AstStatements(MultiLineComment(x[SingleLineComment], token_bundle))
    return x

fn to_string(read x:AstStatements) raises -> String:
    if   x.isa[Root]():             return str(x[Root])
    elif x.isa[SingleLineComment](): return str(x[SingleLineComment])
    elif x.isa[MultiLineComment](): return str(x[MultiLineComment])
    elif x.isa[IfNDef]():      return str(x[IfNDef])
    elif x.isa[MacroElse]():      return str(x[MacroElse])
    elif x.isa[EndIf]():      return str(x[EndIf])
    elif x.isa[TypeDef]():      return str(x[TypeDef])
    elif x.isa[Define]():      return str(x[Define])
    elif x.isa[Scope]():      return str(x[Scope])
    elif x.isa[Include]():      return str(x[Include])
    elif x.isa[CStruct]():      return str(x[CStruct])
    elif x.isa[CStructField]():      return str(x[CStructField])
    elif x.isa[EnumField]():      return str(x[EnumField])
    elif x.isa[BlankSpace]():      return str(x[BlankSpace])
    elif x.isa[PlaceHolder]():      return str(x[PlaceHolder])

    raise Error('to_string does not exist for input x!')


fn to_done(x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[Root]():      return x[Root].done(token_bundle)
    elif x.isa[SingleLineComment](): return x[SingleLineComment].done(token_bundle)
    elif x.isa[MultiLineComment](): return x[MultiLineComment].done(token_bundle)
    elif x.isa[IfNDef](): return x[IfNDef].done(token_bundle)
    elif x.isa[MacroElse](): return x[MacroElse].done(token_bundle)
    elif x.isa[EndIf](): return x[EndIf].done(token_bundle)
    elif x.isa[Define](): return x[Define].done(token_bundle)
    elif x.isa[TypeDef](): return x[TypeDef].done(token_bundle)
    elif x.isa[Scope](): return x[Scope].done(token_bundle)
    elif x.isa[Include](): return x[Include].done(token_bundle)
    elif x.isa[CStruct](): return x[CStruct].done(token_bundle)
    elif x.isa[CStructField](): return x[CStructField].done(token_bundle)
    elif x.isa[EnumField](): return x[EnumField].done(token_bundle)
    elif x.isa[BlankSpace](): return x[BlankSpace].done(token_bundle)
    elif x.isa[PlaceHolder](): return x[PlaceHolder].done(token_bundle)

    raise Error('to_done does not exist for input x!')

fn to_accumulate(mut x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[Root]():             return x[Root].accumulate(token_bundle)
    elif x.isa[SingleLineComment](): return x[SingleLineComment].accumulate(token_bundle)
    elif x.isa[MultiLineComment](): return x[MultiLineComment].accumulate(token_bundle)
    elif x.isa[IfNDef](): return x[IfNDef].accumulate(token_bundle)
    elif x.isa[MacroElse](): return x[MacroElse].accumulate(token_bundle)
    elif x.isa[EndIf](): return x[EndIf].accumulate(token_bundle)
    elif x.isa[TypeDef](): return x[TypeDef].accumulate(token_bundle)
    elif x.isa[Define](): return x[Define].accumulate(token_bundle)
    elif x.isa[Scope](): return x[Scope].accumulate(token_bundle)
    elif x.isa[CStruct](): return x[CStruct].accumulate(token_bundle)
    elif x.isa[CStructField](): return x[CStructField].accumulate(token_bundle)
    elif x.isa[EnumField](): return x[EnumField].accumulate(token_bundle)
    elif x.isa[Include](): return x[Include].accumulate(token_bundle)
    elif x.isa[BlankSpace](): return x[BlankSpace].accumulate(token_bundle)
    elif x.isa[PlaceHolder]():      return x[PlaceHolder].accumulate(token_bundle)

    raise Error('to_accumulate does not exist to handle line: ' + str(token_bundle))

fn to_do_make_child(mut x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[Root]():      return x[Root].do_make_child(token_bundle)
    elif x.isa[SingleLineComment](): return x[SingleLineComment].do_make_child(token_bundle)
    elif x.isa[MultiLineComment](): return x[MultiLineComment].do_make_child(token_bundle)
    elif x.isa[IfNDef](): return x[IfNDef].do_make_child(token_bundle)
    elif x.isa[MacroElse](): return x[MacroElse].do_make_child(token_bundle)
    elif x.isa[EndIf](): return x[EndIf].do_make_child(token_bundle)
    elif x.isa[TypeDef](): return x[TypeDef].do_make_child(token_bundle)
    elif x.isa[Define](): return x[Define].do_make_child(token_bundle)
    elif x.isa[CStruct](): return x[CStruct].do_make_child(token_bundle)
    elif x.isa[CStructField](): return x[CStructField].do_make_child(token_bundle)
    elif x.isa[EnumField](): return x[EnumField].do_make_child(token_bundle)
    elif x.isa[Scope](): return x[Scope].do_make_child(token_bundle)
    elif x.isa[Include](): return x[Include].do_make_child(token_bundle)
    elif x.isa[BlankSpace](): return x[BlankSpace].do_make_child(token_bundle)
    elif x.isa[PlaceHolder](): return x[PlaceHolder].do_make_child(token_bundle)

    raise Error('to_do_make_child does not exist to handle line: ' + str(token_bundle))

fn to_make_child(x:AstStatements, token_bundle: TokenBundle) raises -> AstStatements:
    """Creates a child statement.
    
    Note that the order is very important here.
    """
    if Root.accept(token_bundle):     
        return AstStatements(Root(token_bundle))
    elif SingleLineComment.accept(token_bundle):
        return AstStatements(SingleLineComment(token_bundle))
    elif MultiLineComment.accept(token_bundle):
        return AstStatements(MultiLineComment(token_bundle))
    elif Scope.accept(token_bundle):
        return AstStatements(Scope(make_scopeable(x),token_bundle))  
    elif IfNDef.accept(token_bundle): 
        return AstStatements(IfNDef(token_bundle)) 
    elif MacroElse.accept(token_bundle): 
        return AstStatements(MacroElse(token_bundle)) 
    elif EndIf.accept(token_bundle): 
        return AstStatements(EndIf(token_bundle))  
    elif TypeDef.accept(token_bundle): 
        return AstStatements(TypeDef(token_bundle)) 
    elif CStruct.accept(token_bundle): 
        return AstStatements(CStruct(token_bundle)) 
    # TODO(josiahls): Would be better to accept based on whether the current ast statement
    # is a scope. 
    elif CStructField.accept(token_bundle) and is_valid_scope(x): 
        return AstStatements(CStructField(token_bundle))
    # TODO(josiahls): Would be better to accept based on whether the current ast statement
    # is a scope. 
    elif EnumField.accept(token_bundle) and is_valid_enum_scope(x): 
        return AstStatements(EnumField(token_bundle)) 
    elif Define.accept(token_bundle): 
        return AstStatements(Define(token_bundle)) 
    elif Include.accept(token_bundle): 
        return AstStatements(Include(token_bundle)) 
    elif BlankSpace.accept(token_bundle): 
        return AstStatements(BlankSpace(token_bundle)) 
    elif PlaceHolder.accept(token_bundle): 
        return AstStatements(PlaceHolder(token_bundle)) 
    
    raise Error('to_make_child does not exist to handle line: ' + str(token_bundle))
