# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "jekyll"
  config.vm.define "vagrant-jekyll" do |base|
  end

  # Throw in our provisioning script
  config.vm.provision "shell", path: "provision.sh", privileged: false

  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.network "private_network", ip: "192.168.99.9"

  config.ssh.forward_agent = true
end
