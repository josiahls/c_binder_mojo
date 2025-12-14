The repo is archived. Some learnings from this:
- In the same amount of time I could have spent on this, I would have gotten 5-6+ c (maybe even c++) libs binded manually, with nicer
more readable bindings, and also better understood the inner workings of the libraries I have taken for granted over the years.
- A proper c binding/FFI lib will likely just be embedded or plugged into the mojo compiler at the end of the day.
- C ABI and especially C++ ABI is extremely complicated to connect automatically to, and even more horrible to debug.
- If there is going to be a "c binding/FFI lib" it probably will just be additional FFI helper utilities.
- Mojo bindings will always have the opportunity to improve the public facing side of the API they are connecting to.
- Libraries that do FFI can easily and more directly fix bugs if they are manually maintained, and is more approachable to
new contributers.
- https://github.com/josiahls/ash_dynamics is the project I actually wanted to get started but was blocked by all of this.


# C Binder Mojo
> A generalized c rebinding API for mojo.

> Note: Mojo is a very new and changing langauge. Any and all libs being developed for it so far will be esentially Alpha builds. This means they very likely will break between versions. This project I am using for mujoco c binding. If you would like to use this for your project, I welcome contributions.

> Additionally: This repo is verions 0.0.0.pre-alpha. For the time being this is largely unfriendly to use.

# Installation

Minimal installation requires pixi:
```bash
curl -fsSL https://pixi.sh/install.sh | sh
```

Below command will pull all the deps, build them, and run the tests to verify the installation worked.
```bash
pixi run test_all
```

# Usage
> This is a super early alpha stage right now very likely will not work for usecases beyond what I can develop against (mujoco / opencv). Here be dragons.
> With that said, here are the core commands to generate a binded c project. 

Reference `tests/test_c_project` for a working example. This should be populated after running `pixi run test_all`.

```bash
pixi run generate_bindings --help
```

```bash
pixi run package --help
```

```bash
pixi run configure
```
