#!/usr/bin/env bash

curl --silent 'https://raw.githubusercontent.com/nicholasdower/git-coauthor/master/Formula/git-coauthor.rb' > git-coauthor.rb
curl --silent 'https://raw.githubusercontent.com/nicholasdower/joyn/master/Formula/joyn.rb' > joyn.rb

git config user.email "nicholasdower@gmail.com"
git config user.name "homebrew-tap-ci"

git add .
git commit -a -m 'Update formulas.'
git push
