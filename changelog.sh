#!/usr/bin/env bash
cd data
git diff --shortstat --cached HEAD@{yesterday} -- '*.sh' '*.bat' '.git*'
git diff --shortstat --cached -- ':!*.sh' ':!*.bat' ':!.git*' ':!changelog*' '*'
git diff --cached -U0 -- ':!*.sh' ':!*.bat' ':!.git*' ':!changelog*' '*' > changelog.txt

