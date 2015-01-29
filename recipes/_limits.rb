#
# Cookbook Name:: oracle
# Recipe:: _limits
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

limits_config 'oracle' do
  limits [
    { domain: 'oracle', type: 'soft', item: 'nofile', value: '131072' },
    { domain: 'oracle', type: 'hard', item: 'nofile', value: '131072' },
    { domain: 'oracle', type: 'soft', item: 'nproc', value: '131072' },
    { domain: 'oracle', type: 'hard', item: 'nproc', value: '131072' },
    { domain: 'oracle', type: 'soft', item: 'core', value: 'unlimited' },
    { domain: 'oracle', type: 'hard', item: 'core', value: 'unlimited' },
    { domain: 'oracle', type: 'soft', item: 'memlock', value: '3500000' },
    { domain: 'oracle', type: 'hard', item: 'memlock', value: '3500000' }
  ]
end
