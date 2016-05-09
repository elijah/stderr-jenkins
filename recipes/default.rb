#
# Cookbook Name:: stderr-jenkins
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

letsencrypt_selfsigned 'jenkins.stderr.org' do
  crt     '/etc/ssl/jenkins.stderr.org.crt'
  key     '/etc/ssl/jenkins.stderr.org.key'
end

nginx_site 'jenkins' do
  action :enabled
end

