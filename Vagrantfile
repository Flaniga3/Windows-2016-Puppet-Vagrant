# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "mwrock/Windows2016"

  config.vm.provision "shell", path: './scripts/provision.ps1'
  # Have to run a second provisioning to set puppet config value
  # puppet isn't in path in above script and refreshenv not working
  config.vm.provision "shell", path: './scripts/configure-puppet.ps1'
end