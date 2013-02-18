#
# Cookbook Name:: kismet
# Attributes:: default
#
# Copyright 2013, Tim Smith - tsmith84@gmail.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['kismet']['enable_gpsd'] = true
default['kismet']['start_daemon'] = "true"
default['kismet']['gpsd_options'] = ""
default['kismet']['devices'] = ""
default['kismet']['usbauto'] = "true"

default['kismet']['servername'] = "my_server"
default['kismet']['logprefix'] = "/var/log/kismet"
default['kismet']['allowplugins'] = "true"
default['kismet']['ncsource'] = nil
default['kismet']['preferredchannels'] = "1,6,11"
default['kismet']['channelvelocity'] = 3
default['kismet']['listen'] = "tcp://127.0.0.1:2501"
default['kismet']['allowedhosts'] = "127.0.0.1"
default['kismet']['logtypes'] = "pcapdump,gpsxml,netxml,nettxt,alert"
default['kismet']['pcapdumpformat'] = "ppi"
default['kismet']['defaultlogtitle'] = "Kismet"
default['kismet']['maxclients'] = 5
default['kismet']['maxbacklog'] = 5000
