#!/bin/bash

# Install required extra packages
sudo apt-get install -y xorg-dev libopenal1

# Create the symlinks for compilation
pushd src/native/common
	[ ! -d IL ] && ln -s /opt/vc/include/IL .
	[ ! -d interface ] && ln -s /opt/vc/include/interface .
	[ ! -d vcinclude ] && ln -s /opt/vc/include/vcinclude .
	[ ! -d VG ] && ln -s /opt/vc/include/VG .
popd

mkdir -p libs/linux
cp /usr/lib/arm-linux-gnueabihf/libopenal.so.1 libs/linux/libopenal.so

# Compile
echo "To compile:"
echo "ant"

