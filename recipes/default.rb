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

nginx_proxy 'jenkins' do
  action :enabled
  url 'http://127.0.0.1:8080'
  ssl_key 'jenkins.stderr.org'
  ssl_key_path '/etc/ssl/jenkins.stderr.org.key'
  ssl_certificate_path '/etc/ssl/jenkins.stderr.org.crt'
end

