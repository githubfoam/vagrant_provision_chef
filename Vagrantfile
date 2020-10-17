# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The base box to use
  config.vm.box = "bento/ubuntu-19.10"

  # forwards port 8080 on the host to port 80 on the guest
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision :shell, path: "provision/bootstrap.sh"
  
  # enable chef
  config.vm.provision "chef_solo" do |chef|
  chef.arguments = "--chef-license accept"
	chef.add_recipe "apache"
	chef.cookbooks_path = "provision/cookbooks"
  end
end