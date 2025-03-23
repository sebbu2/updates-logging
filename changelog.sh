#!/usr/bin/env bash
dos2unix -f *
git add [1-9]*
git diff --cached > changelog.txt

