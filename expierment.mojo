# Minimal reproduction of EmberJson to_string issue
from emberjson import JSON, Object, to_string


fn main():
    # Create a JSON object
    var json_obj = Object()
    json_obj["key"] = "value"

    # This works - passing the full JSON object
    var result1: String
    var s = to_string[pretty=True](json_obj)
    print("Full JSON object:", s)
