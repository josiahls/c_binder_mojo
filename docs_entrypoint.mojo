# Native Mojo Modules
import os
from pathlib import Path

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.docs.generate_docs import generate_docs


fn main() raises:
    json_path = Path("docs/.jekyll-cache/c_binder_docs.json")
    if not json_path.exists():
        raise Error(
            String(json_path)
            + "does not exist. Please run `pixi run build_mojo_docs_json` to"
            " generate the docs."
        )

    generate_docs(json_path)
