#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "dev" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not dev! No deploy!"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

cd public

git init
git config user.name "Steve Miskiewicz"
git config user.email "testingevovled@gmail.com"

git remote add upstream "https://$GH_TOKEN@github.com/smiskiewicz/smiskiewicz.github.io"
git fetch upstream
git reset upstream/master

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:master
