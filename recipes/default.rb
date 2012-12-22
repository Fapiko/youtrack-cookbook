#
# Cookbook Name:: youtrack
# Recipe:: default
#
# Copyright (C) 2012 Lucas Jandrew
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'tomcat'

directory '/usr/share/tomcat6' do
  owner 'tomcat6'
  group 'tomcat6'
end

remote_file "#{node['tomcat']['webapp_dir']}/youtrack.war" do
  source 'http://download.jetbrains.com/charisma/youtrack-4.1.2.war'
  mode 0644
  user node['tomcat']['user']
  group node['tomcat']['group']
  notifies :restart, 'service[tomcat]'
end
