# rails-in-vagrant

This is a simple Vagrant project set-up designed for starting with Ruby on Rails development. The project is configured to boot an Ubuntu 14.04. virtual machine acquired from [ATLAS] (https://atlas.hashicorp.com/ubuntu/boxes/trusty64) with [Virtualbox] (https://www.virtualbox.org/). It relies on [vagrant-librarian-chef] (https://github.com/jimmycuadra/vagrant-librarian-chef) Vagrant plugin for provisioning.

## Requirements

* Install Vagrant from the [download page] (https://www.vagrantup.com/downloads.html)

* Install [Virtualbox] (https://www.virtualbox.org/)

* Install [Omnibus] (https://github.com/chef/vagrant-omnibus) (A Vagrant plugin that ensures the desired version of Chef is installed)

* Install [vagrant-librarian-chef] (https://github.com/jimmycuadra/vagrant-librarian-chef)

## Usage

After installing the dependencies, simply clone the project, and call 

> vagrant up

from the project's root directory.

This will power up the virtual machine, and install chef. Vagrant-librarian-chef will also download all the cookbooks from the `/Cheffile` into the `/cookbooks` folder, and then install all the recipes onto the virtual machine, as well as custom recipes stored in the `/site-cookbooks` directory. Paths to this directories, as well as other settings, can be changed in the `/Vagrant` file.


By default, the provisioning will only be executed the first time booting the virtual machine, but you can rerun it upon any booting, by adding the flag `--provision`.

> vagrant up --provision

or

> vagrant reload --provision

To power down the virtual machine:

> vagrant halt

More on teardown can be found here: [Vagrant teardown] (https://docs.vagrantup.com/v2/getting-started/teardown.html)

While your guest machine is up and running, you can ssh to it with `vagrant ssh`. The `/vagrant` directory on the virtual machine is shared with your host's project root directory by default. If you navigate to `/vagrant/getting-started`, and start your rails server, the sample app included in this project should be available on your host machine at *http://localhost:3333*.





