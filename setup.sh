#!/bin/bash
echo "Installing dependencies for compile QEMU in Ubuntu 14"
sudo apt install gcc g++ libtool pkg-config autoconf libglib2.0-dev make
git submodule update --init pixman
git submodule update --init dtc
./configure
make
chmod +x run.sh debug.sh
mv run.sh ../run.sh
mv debug.sh ../debug.sh
cd ..
