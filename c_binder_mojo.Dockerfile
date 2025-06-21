ARG BASE_IMAGE
FROM $BASE_IMAGE AS base

ENV CONTAINER_USER c_binder_mojo_user
ENV CONTAINER_GROUP c_binder_mojo_group
ENV CONTAINER_UID 1000

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y \
    rsync \
    curl \
    gcc \
    g++ \
    sudo \
    apt-transport-https \
    build-essential \
    python3.11-dev \
    python3.11-distutils \
    python3.11-venv \
    cmake \
    git \
    libglib2.0-dev \
    graphviz \
    libxext6 \
    libsm6 \
    libxrender1 \
    xvfb \
    nano \
    tree \
    gh \
    wget \
    libosmesa6-dev \
    libgl1-mesa-glx \
    xorg-dev \
    llvm \
    clang \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN addgroup --gid $CONTAINER_UID $CONTAINER_GROUP && \
    adduser --uid $CONTAINER_UID --gid $CONTAINER_UID $CONTAINER_USER --disabled-password && \
    echo "$CONTAINER_USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$CONTAINER_USER && \
    chmod 0440 /etc/sudoers.d/$CONTAINER_USER

RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null

RUN apt-get update \
    && apt-get install -y gh \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1 && update-alternatives --config python
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.11 get-pip.py
RUN ln -fs /usr/bin/python3.11 /usr/bin/python3

WORKDIR /home/$CONTAINER_USER
RUN mkdir -p /home/c_binder_mojo_user/.local/lib
RUN mkdir -p /home/c_binder_mojo_user/.local/bin
RUN chown $CONTAINER_USER:$CONTAINER_GROUP -R /home/$CONTAINER_USER

USER $CONTAINER_USER
ENV PATH="/home/$CONTAINER_USER/.local/bin:${PATH}"

SHELL [ "/bin/bash", "-c" ]
ENV SHELL=/bin/bash


ENV C_BINDING_MOJO_TEST_MUJOCO="$HOME/mujoco"

# Install pixi and set up PATH in the same layer
ENV PATH="/home/c_binder_mojo_user/.modular/bin:$PATH"
RUN curl -fsSL https://pixi.sh/install.sh | sh

# Add pixi completion to bashrc - escape the $() so it's evaluated at runtime
# RUN echo '\n' >> "/home/c_binder_mojo_user/.bashrc"
RUN echo 'eval "$(pixi completion --shell bash)"' >> "/home/c_binder_mojo_user/.bashrc"
# Add bash shell init to the bashrc
# RUN echo '\n' >> "/home/c_binder_mojo_user/.bashrc"
RUN echo 'eval "$(pixi shell-hook --shell bash)"' >> "/home/c_binder_mojo_user/.bashrc"

WORKDIR /home/$CONTAINER_USER
COPY pixi.toml .

COPY --chown=$CONTAINER_USER:$CONTAINER_GROUP  . c_binder_mojo

FROM base as build_cpu


FROM base as build_gpu
