#!/bin/bash

set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

cd _site

ls

git init
git config user.name "Ryan Chu"
git config user.email "ryaneof@gmail.com"

git remote add upstream "https://$GH_TOKEN@github.com/gocn/edu.git"
git fetch upstream
git reset upstream/release

touch .

git add -A .
git commit -m "Auto rebuild at ${rev}"
git push -q upstream HEAD:release
