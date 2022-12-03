#!/bin/bash
read -p "GitHub Username: " GITHUB_USER
if [ "$GITHUB_USER" = "" ]; then
	echo "Username required. Exiting..."
	exit
fi
read -sp "GitHub API Token: " API_TOKEN
read -p "Enter clone path. Default: PWD: " DIR
DIR="${DIR:=.}"

pushd $DIR

REPOS=( $(curl -H GET -u $API_TOKEN:x-oauth-basic https://api.github.com/search/repositories?q=user:$GITHUB_USER | grep -E 'git@(.*).git' | awk '{print substr($2,2,length($2)-3); }') )

for LINE in "${REPOS[@]}"
do
	git clone $LINE
done

popd
