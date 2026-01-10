#!/bin/bash

REPO_PATH=${1:=/app}
mkdir $REPO_PATH
cd $REPO_PATH
git init --initial-branch=master
git remote add -f origin https://github.com/shreystechtips/nrg-experiments.git

git config core.sparseCheckout true
echo "cv/" >> .git/info/sparse-checkou
git pull origin master

cd cv/
bash ./setup_bg.sh
