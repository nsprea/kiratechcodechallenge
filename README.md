[![CI](https://travis-ci.org/nsprea/kiratechcodechallenge.svg?branch=master)](https://travis-ci.org/nsprea/kiratechcodechallenge)
# kiratechcodechallenge
Ansible code challenge for Kiratech

## Assignment
Write an Ansible playbook that performs the following tasks:
1. ~~Provision two CentOS VMs.~~
2. ~~Resize partition used by Docker.~~
3. ~~Install Docker~~
4. ~~Configure Docker:~~
   1. Expose API REST on Docker Daemon
      + Currently using SSH:
        > Starting with Docker 18.09, the Docker client supports connecting to a remote daemon via SSH
      
       **TODO Expose API using TLS**
   2. ~~Make sure Docker starts at bootup~~
5. ~~Create a Docker swarm~~
   + ~~Make sure to be able to deploy a service from localhost~~
  
_Optional:_

6. Test one task using `Molecule`

_Versioning_
1. ~~Push code on a Github repo~~

_Continuous Integration_
1. Create a pipeline on `Travis`
2. Pipeline must:
   1. Run code linting
   2. Run test as for Step 6 automatically, every time some code is pushed to the repo.

## Getting started
This README file is inside a folder that contains a `Vagrantfile which tells Vagrant how to set up your virtual machines in VirtualBox.

To use the vagrant file, please follow this procedure:
1. Install VirtualBox
2. Install Vagrant
3. Install Ansible
4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`
5. Run the following command to install the necessary Ansible roles for this profile: `$ ansible-galaxy install -r requirements.yml`
6. Run the following command to create the VMs and provision them `vagrant up`
