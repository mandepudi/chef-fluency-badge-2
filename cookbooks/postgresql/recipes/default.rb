#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql_server' do
  notifies :run, 'execute[postgresql_init]'
end

execute 'postgresql_init' do
  command 'postgresql-setup initdb'
  action :nothing
end

service 'postgresql' do
  action [:enable, :start]
end


