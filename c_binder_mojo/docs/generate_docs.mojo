# Native Mojo Modules
from pathlib import Path
from os import mkdir, unlink

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object

# First Party Modules


@fieldwise_init
struct DocStruct(Copyable & Movable):
    var uri_path: String
    var fs_path: Path
    var name: String
    var signature: String

    @staticmethod
    fn from_object(
        parent_path: Path, uri_path: String, object: Object
    ) raises -> Self:
        var name = object["name"].string()
        var signature = object["signature"].string()
        return Self(
            uri_path=uri_path,
            fs_path=parent_path / (name + ".md"),
            name=name,
            signature=signature,
        )

    fn to_markdown(self) raises -> String:
        s = """# {}
""".format(
            self.signature
        )
        return String(s)


@fieldwise_init
struct DocModule(Writable):
    var uri_path: String
    var fs_path: Path
    var name: String
    var structs: List[DocStruct]

    @staticmethod
    fn to_file(parent_path: Path, uri_path: String, object: Object) raises:
        var name = object["name"].string()
        var _uri_path = uri_path
        var uri_path_parts = uri_path.split("/")
        if name == "__init__":
            name = String(uri_path_parts[-1])
            if len(uri_path_parts) > 1:
                parent = String(uri_path_parts[-2])
            else:
                parent = ""
        else:
            _uri_path = _uri_path + "/" + name
            parent = String(uri_path_parts[-1])

        obj = DocModule(
            uri_path=_uri_path,
            fs_path=parent_path / (name + ".md"),
            name=name,
            structs=[
                DocStruct.from_object(parent_path, _uri_path, s.object())
                for s in object["structs"].array()
            ],
        )
        print(obj)

        if obj.fs_path.exists():
            unlink(obj.fs_path)
        obj.fs_path.write_text(obj.to_markdown(String(parent)))

    fn to_markdown(self, parent: String) raises -> String:
        s = """---
title: {}
layout: page
permalink: {}
parent: {}
---\n
""".format(
            self.name, self.uri_path, parent
        )
        for doc_struct in self.structs:
            s += doc_struct.to_markdown() + "\n"
        return String(s)

    fn write_to[W: Writer](self, mut writer: W):
        try:
            s = "DocModule: name: {}, uri_path: {}, file_path: {}".format(
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
            s = "DocPackage: name: {}, uri_path: {}, file_path: {}".format(
                self.name, self.uri_path, String(self.fs_path)
            )
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
    var root_object = parse(result)

    doc_dispatch(
        Path(String("/").join(json_path.path.split("/")[:-2])),
        "",
        root_object.object()["decl"].object(),
    )

    # print(to_string[pretty=True](root_object))
