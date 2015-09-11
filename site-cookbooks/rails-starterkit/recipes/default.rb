#
# Cookbook Name:: rails-starterkit
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "create sample app" do
  code <<-EOH
    cd /vagrant
    rails new getting-started
    cd getting-started
    rails s -b 0.0.0.0
  EOH
end