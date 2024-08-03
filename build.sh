#!/bin/bash

PROTON_PATH="/home/itachi/proton"


export CROSS_COMPILE="/home/itachi/49/bin/aarch64-linux-android-"
export CC="/home/itachi/proton/bin/clang"
export CLANG_TRIPLE=aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=r

export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y a22x_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j16

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image
