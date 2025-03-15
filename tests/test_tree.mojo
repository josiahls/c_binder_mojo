# Native Mojo Modules
import os 
from pathlib import Path
from memory import UnsafePointer
# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.common import Tokenizer
from c_binder_mojo.c_ast_nodes.tree import make_tree
# from c_binder_mojo import c_ast_nodes_old
# from c_binder_mojo import mojo_ast_nodes
# from c_binder_mojo.display_tree import RootDisplayAstNode

# fn test_make_tree_mjtnum() raises:
#     mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
#     num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
#     if not num_mojo_path.exists():
#         raise Error('This path doesnt exist: ' + String(num_mojo_path))
#     print('Processing: ' + String(num_mojo_path))
#     root_node = c_ast_nodes_old.tree.make_tree(num_mojo_path)
#     # print('Root node: ' + String(root_node))
#     # print(String(root_node))
#     display_node = RootDisplayAstNode(root_node)
#     print('DisplayTree:')
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(String(display_node))
#     # root_node = test_fn(num_mojo_path)
#     mojo_tree = mojo_ast_nodes.tree.make_tree(root_node, List[String]())
#     # mojo_tree.str_just_code = True
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.mojo').write_text(String(mojo_tree))
#     mojo_tree = mojo_ast_nodes.tree.make_tree(root_node, List[String]('mjUSESINGLE'))
#     # mojo_tree.str_just_code = True
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum_mjUSESINGLE.mojo').write_text(String(mojo_tree))


# fn test_make_tree_mjtmodel_just_mjVisual() raises:
#     mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
#     # num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
#     num_mojo_path = Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel_just_mjVisual.h')
#     if not num_mojo_path.exists():
#         raise Error('This path doesnt exist: ' + String(num_mojo_path))
#     print('Processing: ' + String(num_mojo_path))
#     root_node = c_ast_nodes_old.tree.make_tree(num_mojo_path)
#     # root_node = test_fn(num_mojo_path)
#     display_node = RootDisplayAstNode(root_node)
#     # print('DisplayTree:')
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel_just_mjVisual.ast').write_text(String(display_node))
#     mojo_tree = mojo_ast_nodes.tree.make_tree(root_node, List[String]())
#     mojo_tree.set_str_just_code(True)
#     # print('Root mojo node: ' + String(mojo_tree))
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel_just_mjVisual.mojo').write_text(String(mojo_tree))


# fn test_make_tree_mjtmodel() raises:
#     mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
#     num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
#     if not num_mojo_path.exists():
#         raise Error('This path doesnt exist: ' + String(num_mojo_path))
#     print('Processing: ' + String(num_mojo_path))
#     root_node = c_ast_nodes_old.tree.make_tree(num_mojo_path)
#     # root_node = test_fn(num_mojo_path)
#     display_node = RootDisplayAstNode(root_node)
#     # print('DisplayTree:')
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.ast').write_text(String(display_node))
#     mojo_tree = mojo_ast_nodes.tree.make_tree(root_node, List[String]())
#     mojo_tree.set_str_just_code(True)
#     # print('Root mojo node: ' + String(mojo_tree))
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.mojo').write_text(String(mojo_tree))


# fn test_make_tree_mjtnum_c_ast() raises:
#     mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
#     num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
#     if not num_mojo_path.exists():
#         raise Error('This path doesnt exist: ' + String(num_mojo_path))
#     print('Processing: ' + String(num_mojo_path))
#     root_node = c_ast_nodes_old.tree.make_tree(num_mojo_path)
#     # print('Root node: ' + String(root_node))
#     # print(String(root_node))
#     # display_node = RootDisplayAstNode(root_node)
#     print('DisplayTree:')
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(String(root_node))


# fn test_make_tree_mjtmodel_just_mjVisual_c_ast() raises:
#     mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
#     # num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
#     num_mojo_path = Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel_just_mjVisual.h')
#     if not num_mojo_path.exists():
#         raise Error('This path doesnt exist: ' + String(num_mojo_path))
#     print('Processing: ' + String(num_mojo_path))
#     root_node = c_ast_nodes_old.tree.make_tree(num_mojo_path)
#     # root_node = test_fn(num_mojo_path)
#     # display_node = RootDisplayAstNode(root_node)
#     # print('DisplayTree:')
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel_just_mjVisual.ast').write_text(String(root_node))



# fn test_make_tree_mjtmodel_c_ast() raises:
#     mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
#     num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
#     if not num_mojo_path.exists():
#         raise Error('This path doesnt exist: ' + String(num_mojo_path))
#     print('Processing: ' + String(num_mojo_path))
#     root_node = c_ast_nodes_old.tree.make_tree(num_mojo_path)
#     # root_node = test_fn(num_mojo_path)
#     # display_node = RootDisplayAstNode(root_node)
#     # print('DisplayTree:')
#     Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.ast').write_text(String(root_node))


fn test_make_tree_mjtnum() raises:
    var logger = Logger.get_default_logger("test_make_tree_mjtnum")
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(num_mojo_path))
    logger.info('Processing: ' + String(num_mojo_path))
    # root_node = c_ast_nodes.tree.make_tree(num_mojo_path)
    tokenizer = Tokenizer()
    tokenizer.tokenize(num_mojo_path)
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.tokenized').write_text(tokenizer.to_string())
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.tokenized_flat').write_text(tokenizer.to_string(True))
    nodes = make_tree(tokenizer.tokens, '/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.tree')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(String(nodes[][0]))



fn test_tokenize_mjmodel() raises:
    var logger = Logger.get_default_logger("test_tokenize_mjmodel")
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    model_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
    if not model_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(model_mojo_path))
    logger.info('Processing: ' + String(model_mojo_path))
    tokenizer = Tokenizer()
    tokenizer.tokenize(model_mojo_path)
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.tokenized').write_text(tokenizer.to_string())
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.tokenized_flat').write_text(tokenizer.to_string(True))
    nodes = make_tree(tokenizer.tokens, '/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.tree')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjmodel.ast').write_text(String(nodes[][0]))



fn main():
    set_global_logger_settings(level=10)
    try:
        # test_make_tree_mjtnum()
        # test_make_tree_mjtmodel()
        # test_make_tree_mjtmodel_just_mjVisual()
        # test_make_tree_mjtnum_c_ast()
        # test_make_tree_mjtmodel_just_mjVisual_c_ast()
        # test_make_tree_mjtmodel_c_ast()
        test_make_tree_mjtnum()
        # test_tokenize_mjmodel()
        print('succeeded')
    except e:
        print('failed' + String(e))
