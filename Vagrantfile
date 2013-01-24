# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  
  config.vm.box = "lucid64"
  
  # Forward guest port 3000 to host port 4000 so we can test on http://localhost:4000
  config.vm.forward_port 3000, 4000
  
  config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "cookbooks"
     chef.add_recipe "winkelbeheer"
     #chef.add_recipe "mysql"
     #chef.add_role "web"
  end
end
