#!/usr/bin/env bash

HOME=$(mktemp -d -p ~ chromiumtemp-XXXXX) \
XDG_CACHE_HOME=${HOME}/.cache \
XDG_CONFIG_HOME=${HOME}/.config \
chromium
