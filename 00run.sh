#!/bin/sh
set -eu
cd $(dirname $0)

#ansible all -i inventories/develop -m ping -u root --ask-pass
ansible-playbook -i inventories/develop system-auth.yml -u root --ask-pass
ansible-playbook -i inventories/develop system-update.yml
ansible-playbook -i inventories/develop system-config.yml
ansible-playbook -i inventories/develop setup-user-env.yml
ansible-playbook -i inventories/develop setup-vscode.yml
ansible-playbook -i inventories/develop setup-devtools.yml
ansible-playbook -i inventories/develop setup-nodenv.yml
ansible-playbook -i inventories/develop setup-pyenv.yml
ansible-playbook -i inventories/develop setup-docker.yml
