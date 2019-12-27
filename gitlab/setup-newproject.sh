#!/usr/bin/env bash

set -e

PROJECTDIR=/home/ipv4v6/gitlab
NAME="Stefan"
MAIL="mail.ipv4v6+gl@gmail.com"
GITLAB="https://gitlab.com/IPv4v6"


if [[ -z ${1} ]]; then
	echo "Usage: ${0} [project name]"
	exit 0
fi

# check for lowercase letters and hyphens
if [[ ${1} =~ ^[a-z0-9-]+$ ]]; then
	echo "valid project name"
else
	echo "invalid project name"
	exit 1
fi


mkdir ${PROJECTDIR}/${1}
cd ${PROJECTDIR}/${1}

git init
git config --local user.email ${MAIL}
git config --local user.name ${NAME}

echo "# ${1}" > README.md
git add README.md
git commit -m 'initial commit'
git remote add origin ${GITLAB}/${1}.git

