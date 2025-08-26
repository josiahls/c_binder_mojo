# Native Mojo Modules
from pathlib import Path
from os import mkdir, unlink

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object

# First Party Modules


alias _DOC_FUNCTION_OVERLOAD_TEMPLATE = """### `fn {}`

{}
"""


@fieldwise_init
struct DocFunctionOverload(Copyable & Movable):
    var name: String
    var signature: String
    var description: String

    @staticmethod
    fn from_object(
        parent_path: Path, uri_path: String, object: Object
    ) raises -> Self:
        var name = object["name"].string()
        var signature = object["signature"].string()
        var description = object["description"].string().replace("\\n", "\n")
        return Self(name=name, signature=signature, description=description)

    fn to_markdown(self) raises -> String:
        s = String(_DOC_FUNCTION_OVERLOAD_TEMPLATE).format(
            self.signature, self.description
        )
        return String(s)


@fieldwise_init
struct DocFunction(Copyable & Movable):
    var name: String
    var signature: String
    var overloads: List[DocFunctionOverload]

    @staticmethod
    fn from_object(
        parent_path: Path, uri_path: String, object: Object
    ) raises -> Self:
        var name = object["name"].string()
        var signature = ""
        if "signature" in object:
            signature = object["signature"].string()
        var overloads: List[DocFunctionOverload] = []
        if "overloads" in object:
            overloads = [
                DocFunctionOverload.from_object(
                    parent_path, uri_path, o.object()
                )
                for o in object["overloads"].array()
            ]
        return Self(name=name, signature=signature, overloads=overloads)

    fn to_markdown(self) raises -> String:
        s: String = ""
        #         s = """### fn `{}`
        # """.format(
        #             self.signature
        #         )
        if self.overloads:
            for doc_overload in self.overloads:
                s += doc_overload.to_markdown() + "\n"
        return String(s)


alias _DOC_FIELD_TEMPLATE = """### var `{}`: `{}`

{}
"""


@fieldwise_init
struct DocField(Copyable & Movable):
    var name: String
    var type: String
    var description: String

    @staticmethod
    fn from_object(
        parent_path: Path, uri_path: String, object: Object
    ) raises -> Self:
        var name = object["name"].string()
        var type = object["type"].string()
        var description = object["description"].string().replace("\\n", "\n")
        return Self(name=name, type=type, description=description)

    fn to_markdown(self) raises -> String:
        s = String(_DOC_FIELD_TEMPLATE).format(
            self.name, self.type, self.description
        )
        return String(s)


alias _DOC_ALIAS_TEMPLATE = """### {}

{}
"""


@fieldwise_init
struct DocAlias(Copyable & Movable):
    var uri_path: String
    var fs_path: Path
    var name: String
    var signature: String
    var description: String

    @staticmethod
    fn from_object(
        parent_path: Path, uri_path: String, object: Object
    ) raises -> Self:
        var name = object["name"].string()
        var signature = object["signature"].string()
        var description = object["description"].string()
        return Self(
            uri_path=uri_path,
            fs_path=parent_path / (name + ".md"),
            name=name,
            signature=signature,
            description=description,
        )

    fn to_markdown(self) raises -> String:
        s = String(_DOC_ALIAS_TEMPLATE).format(self.signature, self.description)
        return String(s)


alias _DOC_STRUCT_TEMPLATE = """# `{}`

{}
"""


@fieldwise_init
struct DocStruct(Copyable & Movable):
    var uri_path: String
    var fs_path: Path
    var name: String
    var signature: String
    var description: String
    var aliases: List[DocAlias]
    var fields: List[DocField]
    var functions: List[DocFunction]

    @staticmethod
    fn from_object(
        parent_path: Path, uri_path: String, object: Object
    ) raises -> Self:
        var name = object["name"].string()
        var signature = object["signature"].string()
        var description = object["description"].string().replace("\\n", "\n")
        var aliases = [
            DocAlias.from_object(parent_path, uri_path, a.object())
            for a in object["aliases"].array()
        ]
        var fields = [
            DocField.from_object(parent_path, uri_path, f.object())
            for f in object["fields"].array()
        ]
        var functions: List[DocFunction] = []
        if "functions" in object:
            functions = [
                DocFunction.from_object(parent_path, uri_path, f.object())
                for f in object["functions"].array()
            ]
        return Self(
            uri_path=uri_path,
            fs_path=parent_path / (name + ".md"),
            name=name,
            signature=signature,
            description=description,
            aliases=aliases,
            fields=fields,
            functions=functions,
        )

    fn to_markdown(self) raises -> String:
        s = String(_DOC_STRUCT_TEMPLATE).format(
            self.signature, self.description
        )
        if self.aliases:
            s += "## Aliases\n"
            for doc_alias in self.aliases:
                s += doc_alias.to_markdown() + "\n"
        if self.fields:
            s += "## Fields\n"
            for doc_field in self.fields:
                s += doc_field.to_markdown() + "\n"
        if self.functions:
            s += "## Functions\n"
            for doc_function in self.functions:
                s += doc_function.to_markdown() + "\n"
        return String(s)


alias _DOC_MODULE_TEMPLATE = """---
title: {}
layout: page
permalink: {}
parent: {}
---\n

{}
"""


@fieldwise_init
struct DocModule(Writable):
    var uri_path: String
    var fs_path: Path
    var name: String
    var description: String
    var structs: List[DocStruct]
    var aliases: List[DocAlias]
    var functions: List[DocFunction]

    @staticmethod
    fn to_file(parent_path: Path, uri_path: String, object: Object) raises:
        var name = object["name"].string()
        var description = object["description"].string().replace("\\n", "\n")
        var _uri_path = uri_path
        var uri_path_parts = uri_path.split("/")
        if name == "__init__":
            name = Path(uri_path).name()
            if len(uri_path_parts) > 1:
                parent = String(uri_path_parts[-2])
            else:
                parent = ""
        else:
            _uri_path = _uri_path + "/" + name
            parent = Path(uri_path).name()

        obj = DocModule(
            uri_path=_uri_path,
            fs_path=parent_path / (name + ".md"),
            name=name,
            description=description,
            structs=[
                DocStruct.from_object(parent_path, _uri_path, s.object())
                for s in object["structs"].array()
            ],
            aliases=[
                DocAlias.from_object(parent_path, _uri_path, a.object())
                for a in object["aliases"].array()
            ],
            functions=[
                DocFunction.from_object(parent_path, _uri_path, f.object())
                for f in object["functions"].array()
            ],
        )
        print(obj)

        if obj.fs_path.exists():
            unlink(obj.fs_path)
        obj.fs_path.write_text(obj.to_markdown(String(parent)))

    fn to_markdown(self, parent: String) raises -> String:
        var s = String(_DOC_MODULE_TEMPLATE).format(
            self.name, self.uri_path, parent, self.description
        )
        if self.aliases:
            s += "## Aliases\n"
            for doc_alias in self.aliases:
                s += doc_alias.to_markdown() + "\n"

        if self.functions:
            s += "## Functions\n"
            for doc_function in self.functions:
                s += doc_function.to_markdown() + "\n"
        if self.structs:
            s += "## Structs\n"
            for doc_struct in self.structs:
                s += doc_struct.to_markdown() + "\n"
        return String(s)

    fn write_to[W: Writer](self, mut writer: W):
        try:
            s = String(
                "DocModule: name: {}, uri_path: {}, file_path: {}"
            ).format(
                self.name.ljust(20),
                self.uri_path.ljust(30),
                String(self.fs_path),
            )
            writer.write(s)
        except e:
            print(e)


@fieldwise_init
struct DocPackage(Writable):
    var uri_path: String
    var fs_path: Path
    var name: String

    @staticmethod
    fn to_file(parent_path: Path, uri_path: String, object: Object) raises:
        name = object["name"].string()
        obj = DocPackage(
            uri_path=uri_path + "/" + name,
            fs_path=parent_path / name,
            name=name,
        )
        print(obj)
        if not obj.fs_path.exists():
            mkdir(obj.fs_path)

        for module in object["modules"].array():
            doc_dispatch(obj.fs_path, obj.uri_path, module.object())

        for package in object["packages"].array():
            doc_dispatch(obj.fs_path, obj.uri_path, package.object())

    fn write_to[W: Writer](self, mut writer: W):
        try:
            s = String(
                "DocPackage: name: {}, uri_path: {}, file_path: {}"
            ).format(self.name, self.uri_path, String(self.fs_path))
            writer.write(s)
        except e:
            print(e)


fn doc_dispatch(parent_path: Path, uri_path: String, object: Object) raises:
    if object["kind"].string() == "module":
        DocModule.to_file(parent_path, uri_path, object)
    elif object["kind"].string() == "package":
        DocPackage.to_file(parent_path, uri_path, object)
    else:
        raise Error("Unknown object kind: " + object["kind"].string())


fn generate_docs(json_path: Path) raises:
    print("Generating docs from " + String(json_path))
    var result = json_path.read_text()
    var root_object = parse(result).object()["decl"].object()

    for module in root_object["modules"].array():
        doc_dispatch(
            Path(String("/").join(json_path.path.split("/")[:-2])),
            "",
            module.object(),
        )

    for package in root_object["packages"].array():
        doc_dispatch(
            Path(String("/").join(json_path.path.split("/")[:-2])),
            "",
            package.object(),
        )

    print(to_string[pretty=True](root_object))
