#
# Cookbook:: cron-job
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'cronie'
service 'crond' do
  action [:start, :enable]
end

file '/var/spool/cron/root' do
  owner 'root'
  group 'root'
  content '*/1 * * * * /usr/bin/chef-client
'
  action :create
end
