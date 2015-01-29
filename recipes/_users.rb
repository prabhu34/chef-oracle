#
# Cookbook Name:: oracle
# Recipe:: _users
#
# Copyright (C) 2015 Leonard TAVAE
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

group 'dba' do
  action :create
  gid 1000
end

user 'oracle' do
  action :create
  comment 'Oracle user'
  uid 1000
  gid 'dba'
  home '/home/oracle'
  shell '/bin/bash'
  password '$1$JJsvHslV$szsCjVEroftprNn4JHtDi.'
  supports manage_home: true
end

template '/home/oracle/.profile' do
  source 'oracle_profile.erb'
  owner 'oracle'
  group 'dba'
  mode '0644'
end
