#!/usr/bin/env bash

set -e
set -u

TARGET=/opt/john
GITURL=https://github.com/openwall/john

rm -rf ${TARGET}
mkdir -p ${TARGET}

git clone ${GITURL}
cd john/src
./configure
make
cp -av ../run/* ${TARGET}
