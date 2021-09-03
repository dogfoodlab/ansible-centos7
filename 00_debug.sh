#!/bin/sh
set -eu
cd $(dirname $0)

#ansible -i inventories/develop/ all -m ping
#ansible -i inventories/develop/ all -m setup
#ansible-playbook -i inventories/develop/ init-minimal.yml -u root --ask-pass
#ansible-playbook -i inventories/develop/ init-minimal.yml -u ubuntu --ask-pass --ask-become-pass
#ansible-playbook -i inventories/develop/ setup-proxy.yml

#ansible-playbook -i inventories/indigo/ setup-system.yml
#ansible-playbook -i inventories/indigo/ setup-developer.yml

#ansible-playbook -i inventories/fiware/ setup-system.yml
#ansible-playbook -i inventories/fiware/ setup-developer-min.yml
