# Native Mojo Modules
from pathlib import Path
from os import mkdir

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object

# First Party Modules


@fieldwise_init
struct DocModule(Writable):
    var uri_path: String
    var fs_path: Path
    var name: String

    @staticmethod
    fn to_file(parent_path: Path, uri_path: String, object: Object) raises:
        name = object["name"].string()
        if name == "__init__":
            # FIXME: We probably should do something for __init__. Could serve as an index for this module.
            return

        obj = DocModule(
            uri_path=uri_path, fs_path=parent_path / (name + ".md"), name=name
        )
        print(obj)

        obj.fs_path.write_text(obj.to_markdown())

    fn to_markdown(self) raises -> String:
        return String(self.name)

    fn write_to[W: Writer](self, mut writer: W):
        try:
            s = "DocModule: name: {}, uri_path: {}, file_path: {}".format(
                self.name, self.uri_path, String(self.fs_path)
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
