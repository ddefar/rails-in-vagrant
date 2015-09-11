# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  #config.vm.network :private_network, ip: "192.168.60.109"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "2048"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
  config.vm.synced_folder "./", "/vagrant"
  config.vm.provision :chef_solo do |chef|
    chef.version = "12.3.0"
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe "git"
    chef.add_recipe "build-essential"
    chef.add_recipe "openssl"
    chef.add_recipe "imagemagick"
    chef.add_recipe "runit"
    #chef.add_recipe "nginx"
    chef.add_recipe "postgresql::server"
    chef.add_recipe "rvm::user"
    #chef.add_recipe "rvm::system_install"
    chef.add_recipe 'rvm::gem_package'
    chef.add_recipe "vim"
    #chef.add_recipe "rails-starterkit"
      
    chef.json = {
      
      rvm: {
        rvmrc: {
            rvm_autolibs_flag: "disabled"
        },
        user_installs: [{
            rubies: ['2.1.2'],
            default_ruby: 'ruby-2.1.2',
            user: 'vagrant',
            code: 'rvm use 2.1.2',
            global_gems: [{name: 'rake'}, {name: 'bundler'}, {name: 'rails'}]
        }]
      },

      "postgresql" => {
        "password" => { "postgres" => "banana" }
      }
    }
  end

  #config.vm.provision :shell, :privileged => false, :path => "bootstrap.sh"
    
end
