#!/usr/bin/env bash

set -o pipefail

git rev-list --objects --all |
git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' |
sort -k3,3 -n -r
