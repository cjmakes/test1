#!/bin/bash

mkdir -p ~/.ssh
echo $1 > ~/.ssh/id_ed25519
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
git clone ssh://git@github.com/cjmakes/test2
cat test2/README.md > $GITHUB_OUTPUT
