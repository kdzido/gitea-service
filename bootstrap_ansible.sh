#!/usr/bin/env bash

set -e

echo "Installing Ansible..."
yum -y install epel-release
yum -y install ansible

cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg