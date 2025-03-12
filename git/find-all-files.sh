#!/usr/bin/env bash

git log --all --name-only --format= | sort | uniq
