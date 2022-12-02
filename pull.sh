#!/bin/bash
repos=(
	git@github.com:noconnor29/ansible-role-external.git
	git@github.com:noconnor29/ansible-role-ssh-audit.git
	git@github.com:noconnor29/ansible-role-github-deploy.git
	git@github.com:noconnor29/ansible-role-media.git
	git@github.com:noconnor29/ansible-role-bastion.git
	git@github.com:noconnor29/ansible.git
	git@github.com:noconnor29/.userconfigs.git
	git@github.com:noconnor29/.external-configs.git
	git@github.com:noconnor29/CodonAnalysis.git
	git@github.com:noconnor29/ansible-role-cloud-init.git
	git@github.com:noconnor29/ansible-role-harden.git
	git@github.com:noconnor29/ansible-role-ansiblesrv.git
	git@github.com:noconnor29/external-docker-compose.git
	git@github.com:noconnor29/internal-docker-compose.git
)
#declare -p repos
for line in "${repos[@]}"
do 
	git clone $line
done