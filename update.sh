#!/usr/bin/env bash

curl --silent 'https://raw.githubusercontent.com/nicholasdower/git-coauthor/master/Formula/git-coauthor.rb' > git-coauthor.rb
curl --silent 'https://raw.githubusercontent.com/nicholasdower/join/master/Formula/join.rb' > join.rb
curl --silent 'https://raw.githubusercontent.com/nicholasdower/quote/master/Formula/quote.rb' > quote.rb
curl --silent 'https://raw.githubusercontent.com/nicholasdower/awake/master/Formula/awake.rb' > awake.rb

git config user.email "nicholasdower@gmail.com"
git config user.name "homebrew-tap-ci"

git add .
git commit -a -m 'Update formulas.'
git push
