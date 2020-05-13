# Kiratech Code Challenge
[![CI](https://travis-ci.org/nsprea/kiratechcodechallenge.svg?branch=master)](https://travis-ci.org/nsprea/kiratechcodechallenge)

Ansible code challenge for Kiratech.

## Contents
1. [Assignment](#assignment)
2. [Getting started](#getting-started)
  1. [Requirements](#requirements)
     + [SSH Configuration](#ssh-configuration)
  2. [Quick setup on Ubuntu](#quick-setup-on-ubuntu)
  3. [Run the playbook](#run-the-playbook) 

## Assignment
Write an Ansible playbook that performs the following tasks:
- [x] 1. Provision two CentOS VMs.
- [x] 2. Resize partition used by Docker.
- [x] 3. Install Docker
- [x] 4. Configure Docker:
   - [ ] 1. Expose API REST on Docker Daemon
      + Currently using SSH:
        > Starting with Docker 18.09, the Docker client supports connecting to a remote daemon via SSH
      
       **TODO Expose API using TLS**
   - [x] 2. Make sure Docker starts at bootup
- [x] 5. Create a Docker swarm
   - [x] Make sure to be able to deploy a service from localhost
  
_Optional:_
- [x] 6. Test one task using `Molecule`

_Versioning_
- [x] Push code on a Github repo

_Continuous Integration_
- [x] 1. Create a pipeline on `Travis`
- [x] 2. Pipeline must:
  - [x] Run code linting
  - [x] Run test as for Step 6 automatically, every time some code is pushed to the repo.

## Getting started
This steps will take you into running this playbook on your local environment.
If you are running Ubuntu, jump to [Quick setup on Ubuntu](#quick-setup-on-ubuntu)

### Requirements
This project makes use of the following packages and plugins:
+ virtualbox
+ vagrant
  + vagrant-hostsupdater plugin
  + vagrant-disksize plugin
+ docker-ce
+ docker-ce-cli
+ python
+ pip
  + ansible
  + molecule
  + docker

#### SSH Configuration
It is also recommended to configure ssh as follows:
1. Generate rsa keys in your `~/.ssh` folder:
   ```
   $ ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q
   ```
2. Edit your `~/.ssh/config ` as follows:
   ```
   Host 192.168.100.* *.vagrant
     StrictHostKeyChecking no
     UserKnownHostsFile=/dev/null
     User root
     LogLevel ERROR
   ```
 
### Quick setup on Ubuntu
If you are running Ubuntu, all you have to do is running the setup script:
```
$ sudo ./workbench_setup.sh
```
 
### Run the playbook
After you completed the installation steps, please run the following command to create the virtual machines and run the playbook:
```
$ vagrant up
```
