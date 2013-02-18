#
# Cookbook Name:: kismet
# Recipe:: default
#
# Copyright 2013, Tim Smith - tsmith84@gmail.com
#
# All rights reserved - Do Not Redistribute
#

# install gpsd and enable the service
if node['kismet']['enable_gpsd']
  package "gpsd"

  service "gpsd" do
    supports :status => true, :restart => true
    action [ :enable, :start ]
  end
end

# add the apt repository for kismet
apt_repository "kismet_wireless" do
  uri "https://www.kismetwireless.net/code/"
  components ["kismet"]
  distribution node['lsb']['codename']
end

# install kismet
package "kismet" do
  action :install
end




