#!/usr/bin/env bash

curl --silent 'https://raw.githubusercontent.com/nicholasdower/git-coauthor/master/Formula/git-coauthor.rb' > git-coauthor.rb

git config user.email "nicholasdower@gmail.com"
git config user.name "homebrew-formulas-ci"
git commit -a -m 'Update formulas.'
git push
