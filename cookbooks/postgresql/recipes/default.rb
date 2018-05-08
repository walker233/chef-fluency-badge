#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package 'postresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end

