#!/usr/bin/env bash

# CREATE
repo=$1
commit=$2

git init
git add .
git commit -m $commit
git branch -M main
git remote add origin https://github.com/arhamgarg/$repo.git
git push -u origin main

# PUSH
# git remote add origin https://github.com/arhamgarg/$repo.git
# git branch -M main
# git push -u origin main
