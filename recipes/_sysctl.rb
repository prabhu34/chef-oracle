#
# Cookbook Name:: oracle
# Recipe:: _sysctl
#
# Copyright (C) 2015 Leonard TAVAE
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

include_recipe 'sysctl::default'

sysctl_param 'fs.file-max' do
  value '327679'
end

sysctl_param 'kernel.msgmni' do
  value '2878'
end

sysctl_param 'kernel.msgmax' do
  value '8192'
end

sysctl_param 'kernel.msgmnb' do
  value '65536'
end

sysctl_param 'kernel.sem' do
  value '250 32000 100 142'
end

sysctl_param 'kernel.shmmni' do
  value '4096'
end

sysctl_param 'kernel.shmall' do
  value '1073741824'
end

sysctl_param 'kernel.shmmax' do
  value '4294967295'
end

sysctl_param 'net.core.rmem_default' do
  value '262144'
end

sysctl_param 'net.core.rmem_max' do
  value '2097152'
end

sysctl_param 'net.core.wmem_default' do
  value '262144'
end

sysctl_param 'net.core.wmem_max' do
  value '262144'
end

sysctl_param 'fs.aio-max-nr' do
  value '3145728'
end

sysctl_param 'net.ipv4.ip_local_port_range' do
  value '1024 65000'
end
