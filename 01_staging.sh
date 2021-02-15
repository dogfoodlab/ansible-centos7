#!/bin/sh
set -eu
cd $(dirname $0)

#ansible all -i inventories/staging -m ping

#ansible-playbook -i inventories/staging/ setup-system.yml

ansible-playbook -i inventories/staging/ setup-developer.yml
