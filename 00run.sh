#!/bin/sh
set -eu
cd $(dirname $0)

#ansible all -i inventories/develop -m ping -u root --ask-pass

ansible-playbook -i inventories/develop system-init-minimal.yml -u root --ask-pass

ansible-playbook -i inventories/develop setup-developer.yml
