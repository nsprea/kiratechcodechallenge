# -*- mode: ruby -*-
# vi: set ft=ruby :

require_relative './scripts/key_authorization'

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'centos/8'
  config.disksize.size = '50GB'
  # Copy public key to guests and add host in authorized keys
  authorize_key_for_root config, '~/.ssh/id_dsa.pub', '~/.ssh/id_rsa.pub'
  config.ssh.insert_key = false #Disable default insecure key
  
  # Create first VM
  config.vm.define 'vm1' do |vm1|
    vm1.vm.network 'private_network', ip: '192.168.100.2'
    vm1.vm.hostname = 'vm1.vagrant'
  end

  # Create second VM
  config.vm.define 'vm2' do |vm2|
    vm2.vm.network 'private_network', ip: '192.168.100.3'
    vm2.vm.hostname = 'vm2.vagrant'
    
    # Run ansible as provisioner when both VMs are up
    vm2.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.playbook = "playbook.yml"
      ansible.inventory_path = "inventory"
      ansible.become = true
      ansible.limit = "all"
    end
  end
end
