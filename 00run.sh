#!/bin/sh
set -eu
cd $(dirname $0)

#ansible all -i inventories/develop -m ping

ansible-playbook -i inventories/develop init-minimal.yml -u root --ask-pass

ansible-playbook -i inventories/develop setup-system.yml

ansible-playbook -i inventories/develop setup-developer.yml
