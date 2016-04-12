#!/usr/bin/env bash

if [ -z $1 ] ; then
	echo "No version specified"
	exit
fi

ansible-playbook -K \
  -i hosts \
  -e @private_vars/api_env.yml \
  -e version=$1 \
  playbook.yml
