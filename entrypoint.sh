#!/bin/bash

eval `ssh-agent -s`
ssh-add -L
echo ssh-add - <<< $TEST2_KEY
ssh-add -L

git clone ssh://git@github.com/cjmakes/test2
cat test2/README.md
