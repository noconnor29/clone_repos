#!/bin/bash
# do a get request to https://api.github.com/users/noconnor29/repos
# will also need a personal API token in bash_profile?
repos=( $(curl -s https://api.github.com/users/noconnor29/repos | grep -E 'git@(.*).git' | awk '{print substr($2, 2, length($2)-3); }') )

for line in "${repos[@]}"
do
	git clone $line
done
