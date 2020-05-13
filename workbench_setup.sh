#!/bin/bash
echo '### Configuring local workbench ###'
echo 

echo '--- Install Virtualbox and Vagrant'
apt install vagrant virtualbox -y

echo '--- Install Vagrant plugins'
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-disksize

echo '--- Install Docker'
apt install docker-ce docker-ce-cli -y

echo '--- Install Python'
apt install -y python

echo '--- Get pip'
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

echo '--- Install Ansible'
pip3 install ansible -y

echo '--- Install Molecule'
pip3 install molecule -y

echo '--- Install docker SDK for Python'
pip3 install docker -y

echo '--- Create ~/.ssh'
mkdir -p ~/.ssh

echo '--- Generate SSH keys'
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q

echo '--- Create ~/.ssh/config file'
touch ~/.ssh/config
echo 'Host 192.168.100.* *.vagrant
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
  User root
  LogLevel ERROR' > ~/.ssh/config

echo '--- end'
