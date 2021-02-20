#!/bin/sh
set -eu
cd $(dirname $0)

sudo yum -y install sshpass
pip install --upgrade pip
pip install -r requirements.txt
