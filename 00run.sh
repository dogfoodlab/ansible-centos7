#!/bin/sh
set -eu
cd $(dirname $0)

#ansible all -i inventories/develop -m ping -u root --ask-pass
ansible-playbook -i inventories/develop system-auth.yml -u root --ask-pass
ansible-playbook -i inventories/develop system-update.yml
ansible-playbook -i inventories/develop system-config.yml

ansible-playbook -i inventories/develop setup-developer.yml

ansible-playbook -i inventories/develop setup-sqlite-3.34.yml
