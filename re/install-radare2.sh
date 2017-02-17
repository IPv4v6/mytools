#!/usr/bin/env bash

set -e
set -u

TARGET=/opt/radare2
GITURL=https://github.com/radare/radare2.git

rm -rf ${TARGET}
mkdir -p ${TARGET}

git clone ${GITURL}
cd radare2
./configure --prefix=${TARGET}
make
make install
