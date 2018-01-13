#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['plat_form_family'] == 'rhel'
  package = 'httpd'
elsif node['plat_form_family'] == 'debian'
  package = 'apache2'

package 'apache2' do
  package_name package
  action :install
end

service 'apache2' do
  service_name package
  action [:enable, :start]
end

