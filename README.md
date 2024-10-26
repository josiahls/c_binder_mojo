# C Binder Mojo
> A generalized c beinding API for mojo.

> Note: Mojo is a very new and changing langauge. Any and all libs
being developed for it so far will be esentially Alpha builds. This means
they very likely will break between versions. This project I am using for mujoco c binding. If you would like to use this for your project, I welcome contributions.

# Installation
```
sudo apt install clang
```


To get the macros
```bash
clang -Xclang -dM -E -DmjUSESINGLE -I/home/fastrl_mojo_user/fastrl_mojo/mujoco_mojo/mujoco/include  /home/fastrl_mojo_user/fastrl_mojo/mujoco_mojo/mujoco/include/mujoco/mjtnum.h
```
To get the ast
```bash
clang -Xclang -ast-dump -fsyntax-only -fno-show-source-location -fno-show-column -DmjUSESINGLE -I/home/fastrl_mojo_user/fastrl_mojo/mujoco_mojo/mujoco/include  /home/fastrl_mojo_user/fastrl_mojo/mujoco_mojo/mujoco/include/mujoco/mjtnum.h
```

## Wtih Tests
Currently testing against mujoco c API.

```bash
cd $HOME
git clone https://github.com/google-deepmind/mujoco.git

export C_BINDING_MOJO_TEST_MUJOCO=$HOME/mujoco
```