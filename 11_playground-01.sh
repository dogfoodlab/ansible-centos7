#!/bin/sh
set -eu
cd $(dirname $0)

ansible-playbook -i inventories/playground-01/ setup-playground-01.yml
