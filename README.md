# kiratechcodechallenge
Ansible code challenge for Kiratech

## Instructions
This README file is inside a folder that contains a `Vagrantfile which tells Vagrant how to set up your virtual machines in VirtualBox.

To use the vagrant file, please follow this procedure:
1. Install VirtualBox
2. Install Vagrant
3. Install Ansible
4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`
5. Run the following command to install the necessary Ansible roles for this profile: `$ ansible-galaxy install -r requirements.yml`
6. Run the following command to create the VMs and provision them `vagrant up`
