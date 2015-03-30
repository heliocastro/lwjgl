#!/bin/bash

# Install required extra packages
sudo apt-get install -y xorg-dev

# Create the symlinks for compilation
pushd src/native/common
	[ ! -d IL ] && ln -s /opt/vc/include/IL .
	[ ! -d interface ] && ln -s /opt/vc/include/interface .
	[ ! -d vcinclude ] && ln -s /opt/vc/include/vcinclude .
	[ ! -d VG ] && ln -s /opt/vc/include/VG .
popd

# Compile
echo "To compile:"
echo "ant"
echo "ant compile_native_es

