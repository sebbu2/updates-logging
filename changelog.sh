#!/usr/bin/env bash
if [[ `basename "$PWD"` != "data" ]]
then
	cd data
fi
git diff --shortstat -w --cached HEAD@{yesterday} -- '*.sh' '*.bat' '.git*'
git diff --shortstat -w --cached -- ':!*.sh' ':!*.bat' ':!.git*' ':!changelog*' '*'
git diff --cached -w -U0 -- ':!*.sh' ':!*.bat' ':!.git*' ':!changelog*' '*' | grep -vE '^(index|@@|\-\-\-|\+\+\+) ' > changelog.txt

