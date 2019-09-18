#!/usr/bin/env bash

set -e
set -u

TARGET=/opt/hashcat
GITURL=https://github.com/hashcat/hashcat

rm -rf ${TARGET}
mkdir -p ${TARGET}

git clone ${GITURL}
cd hashcat
make PREFIX=${TARGET} install
