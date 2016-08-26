#!/bin/bash

# Provision dependencies
ansible-playbook vpc.yml -e '@vars/devbrd.yml'
ansible-playbook redis.yml -e '@vars/devbrd.yml'
ansible-playbook rds.yml -e '@vars/devbrd.yml'
#
ansible-playbook elb.yml -e '@vars/devbrd.yml'
ansible-playbook ec2_keys.yml -e '@vars/devbrd.yml'
#
#    - web
#    - create_db
