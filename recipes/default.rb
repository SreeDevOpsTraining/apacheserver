#
# Cookbook:: apache-server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'apacheserver::webserver'
include_recipe 'apacheserver::config'
include_recipe 'firewall::default'
