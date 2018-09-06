#
# Cookbook:: httpd-install
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

service 'httpd' do
  action :start
end

service 'httpd' do
  action :enable
end

service 'firewalld' do
  action [:start, :enable]
end

execute 'allow port' do
  command 'firewall-cmd --zone=public --add-port=80/tcp'
  action :run
end

file '/var/www/html/index.html' do
  action :create
  owner 'apache'
  group 'apache'
  mode '0644'
  content 'welcome to chef automate httpd install'
end
