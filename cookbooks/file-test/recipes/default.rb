#
# Cookbook:: file-test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file'/tmp/dummy.txt' do
  mode '755'
  owner 'root'
  group 'root'
  content 'This file is created by chef'
  action :delete
end
