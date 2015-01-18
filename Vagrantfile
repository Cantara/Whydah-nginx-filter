# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.network "private_network", ip: "192.168.111.222"
  config.vm.hostname = "dev.getwhydah.com"
  config.vm.provision "shell", path: "provision/provision.sh"
end
