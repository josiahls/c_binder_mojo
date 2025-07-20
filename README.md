# C Binder Mojo
> A generalized c beinding API for mojo.

> Note: Mojo is a very new and changing langauge. Any and all libs being developed for it so far will be esentially Alpha builds. This means they very likely will break between versions. This project I am using for mujoco c binding. If you would like to use this for your project, I welcome contributions.

> Additionally: This repo is verions 0.0.0.pre-alpha. For the time being this is largely unfriendly to use.

# Installation

```bash
cd $HOME
git clone https://github.com/josiahls/c_binder_mojo.git

cd c_binder_mojo

git clone https://github.com/josiahls/firehose.git

pixi shell
```


## With Tests
Currently testing against mujoco c API.

```bash
cd $HOME
git clone https://github.com/google-deepmind/mujoco.git

export C_BINDING_MOJO_TEST_MUJOCO=$HOME/mujoco
```

## With Mujoco

**MaxOS Arm64**

Reference [docs/SHARP_EDGES.md](docs/SHARP_EDGES.md) for known issues. Getting a OpenGL app to work from docker to mac host is not possible.

---


