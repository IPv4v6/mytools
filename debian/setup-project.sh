#!/usr/bin/env bash

set -e

NAME="Stefan"
MAIL="mail.ipv4v6+debian@gmail.com"
SALSA="https://salsa.debian.org/IPv4v6"


if [[ -z ${1} ]]; then
	echo "Usage: ${0} [project name]"
	exit 0
fi


git clone ${SALSA}/${1}
cd ${1}
git config --local user.email ${MAIL}
git config --local user.name ${NAME}
