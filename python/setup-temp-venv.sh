#!/usr/bin/env -S bash --init-file

TEMPDIR=$(mktemp -d -p ~ venvtemp-XXXXX)

python3 -m venv ${TEMPDIR}
source ${TEMPDIR}/bin/activate
