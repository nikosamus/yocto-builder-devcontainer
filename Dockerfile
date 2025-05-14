FROM ubuntu

RUN apt update && apt install -y sudo \
    gawk wget git-core diffstat unzip texinfo \
    gcc-multilib build-essential chrpath socat cpio \
    python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git \
    python3-jinja2 libsdl1.2-dev xterm \
    locales libssl-dev gdisk sudo \
    libgmp-dev libmpc-dev pylint \
    file lz4 zstd bc \
    bsdmainutils git-lfs libusb-1.0-0

RUN usermod -l vscode ubuntu

RUN echo 'vscode:vscode' | chpasswd

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

#SHELL ["/bin/bash", "-o", "pipefail", "-c"]
