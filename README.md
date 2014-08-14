# Ansible Role For A Base Linux System

[![Build Status](http://img.shields.io/travis/crushlovely/ansible-deploy-user.svg?style=flat)](https://travis-ci.org/crushlovely/ansible-deploy-user)
[![Current Version](http://img.shields.io/github/release/crushlovely/ansible-deploy-user.svg?style=flat)](https://galaxy.ansible.com/list#/roles/1180)

This Ansible role creates and configures a deploy user for the deployment and managemnt of applications.  This was added as an example of what a users playbook should look like to deploy an application to an Ubuntu server.

## Installation

``` bash
$ ansible-galaxy install crushlovely.deploy-user
```

## Variables

None

## Usage

Once this role is installed on your system, include it in the roles list of your playbook.

``` yaml
---
- hosts: localhost
  roles:
    - { role: crushlovely.deploy-user }
```

## Dependencies

None

## License

MIT