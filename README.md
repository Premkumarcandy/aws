# Ansible playbooks for AWS

## Getting started
Create `source.me` file:
```
export AWS_ACCESS_KEY_ID="AWS_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="AWS_SECRET_ACCESS_KEY"
export ANSIBLE_HOSTS=./ec2.py
export AWS_REGION=us-west-2
```
Export env variables:
```
$ source source.me
```

## Playbook's configuration
```
vars/env_name.yml
```
## Run playbook
```
ansible-playbook site.yml -e "@vars/env_name.yml"
```
