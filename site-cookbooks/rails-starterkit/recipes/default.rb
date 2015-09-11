#
# Cookbook Name:: rails-starterkit
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'fetch signing key' do
  command 'gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3'
end
execute 'install rvm' do
	command 'curl -sSL https://get.rvm.io | bash -s stable'
end
#execute 'source rvm' do
#  command 'source /home/vagrant/.rvm/scripts/rvm'
#end


execute 'install ruby' do
  command 'rvm install 2.2.1'
end
execute 'set default ruby version' do
  command 'rvm use 2.2.1 --default'
end

execute 'install rails gem' do
  command 'sudo gem install rails'
  not_if 'gem list | grep rails'
end
