#!/usr/bin/env bash

if [[ -z ${1} ]]; then
	echo "Usage: ${0} [ 1 | 3 | 5 ]"
	echo "-----"
	echo "1 - blinking block / 3 - blinking underline / 5 - blinking line"
	exit 0
fi

# check for valid options
if [[ ${1} =~ ^[135]$ ]]; then
	echo -en "\e[${1} q"
else
	echo "invalid option"
	exit 1
fi
