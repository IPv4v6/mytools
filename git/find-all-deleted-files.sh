#!/usr/bin/env bash

git log --all --diff-filter=D --name-only --format= | sort | uniq
