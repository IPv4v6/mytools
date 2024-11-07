#!/usr/bin/env bash

set -e

for REPODIR in *
do
	if test -d "${REPODIR}"; then
		if git -C "${REPODIR}" rev-parse; then
			git -C "${REPODIR}" bundle create -q "../${REPODIR}.bundle" --all || \
			echo "ERROR creating bundle: ${REPODIR}"
		else
			echo "ERROR no git directory: ${REPODIR}"
		fi
	fi
done
