#!/usr/bin/env bash

set -e
set -u

TARGET=/opt/john
GITURL=https://github.com/magnumripper/JohnTheRipper

rm -rf ${TARGET}
mkdir -p ${TARGET}

git clone ${GITURL}
cd JohnTheRipper/src
./configure
make
cp -av ../run/* ${TARGET}
