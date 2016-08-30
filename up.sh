#!/bin/bash

# Provision dependencies
ansible-playbook vpc.yml -e '@vars/devbrd.yml'
ansible-playbook redis.yml -e '@vars/devbrd.yml'
ansible-playbook rds.yml -e '@vars/devbrd.yml'
#
ansible-playbook elb.yml -e '@vars/devbrd.yml'
ansible-playbook ec2_keys.yml -e '@vars/devbrd.yml'
#
#ansible-playbook -v iam.yml -e '@vars/devbrd.yml' -e '@vars/cityline.yml'
# rename to provision ec2 role
ansible-playbook web.yml -e '@vars/devbrd.yml'
#
ansible-playbook -v db.yml -e '@vars/devbrd.yml' -e '@vars/cityline.yml'
ansible-playbook -v s3.yml -e '@vars/devbrd.yml' -e '@vars/cityline.yml'
#
# rename to web role
ansible-playbook -v deploy.yml -e '@vars/devbrd.yml' -e '@vars/cityline.yml'
