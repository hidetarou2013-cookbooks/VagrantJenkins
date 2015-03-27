#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2014, EIT CO.,LTD.
#
# All rights reserved - Do Not Redistribute
#
#package 'java-1.7.0-openjdk' do
#  action :install
#end

execute "shell" do
  command "sudo yum -d0 -e0 -y install java-1.7.0-openjdk-1.7.0.65-2.5.1.2.el6_5" 
end

remote_file '/tmp/' + node['jenkins']['rpm'] do
  source node['jenkins']['rpm_url']
  owner "root"
  group "root"
  mode "0755"
  not_if "test -e " + '/tmp/' + node['jenkins']['rpm']
end

package "jenkins" do
  action :install
  source '/tmp/' + node['jenkins']['rpm']
  provider Chef::Provider::Package::Rpm
  not_if "rpm -q jenkins"
end

### add by maekawa
template "/etc/sysconfig/jenkins" do
  source "jenkins.erb" 
  owner "root" 
  group "root" 
  mode 0644
#  notifies :run, "bash[reload_jenkins]" 
end


service "jenkins" do
  action [:enable, :start]
end

service 'iptables' do
    action [:disable, :stop]
end
