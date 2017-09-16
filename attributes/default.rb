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
default['kismet']['start_daemon'] = 'true'
default['kismet']['gpsd_options'] = ''
default['kismet']['devices'] = ''
default['kismet']['usbauto'] = 'true'

# The following attributes are used to dynamically generate the
# kismet.conf file from the template. The values below are the
# defaults used in the initial template of this cookbook.
#
# The strings "true" or "false" are used instead of literal true or
# false as they are rendered in the config file by ERB.
#
# Additional comments for specific settings are from the kismet.conf
# file and credit goes to the Kismet project for their content.
default['kismet']['config']['version']      = '2009-newcore'
default['kismet']['config']['logdefault']   = 'Kismet'
default['kismet']['config']['servername']   = 'my_server'
default['kismet']['config']['logprefix']    = '/var/log/kismet'
default['kismet']['config']['hidedata']     = 'true'
default['kismet']['config']['allowplugins'] = 'true'

# See the Kismet README for full information on the new source format:
# ncsource=interface:options
#
# The value must be a string, for example:
# "wlan0"
# "wifi0:type=madwifi"
# "wlan0:name=intel,hop=false,channel=11"
default['kismet']['config']['ncsource'] = nil

# Comma-separated list of sources to enable.  This is only needed if you defined
# multiple sources and only want to enable some of them.  By default, all defined
# sources are enabled.
# For example, if sources with name=prismsource and name=ciscosource are defined,
# and you only want to enable those two:
# enablesources=prismsource,ciscosource
default['kismet']['config']['enablesources'] = nil

# Channels
# Channels are an important aspect of Kismet configuration. For more
# information see the Kismet documentation. Specify each option as a
# new attribute key, with its value as a string or array as described
# in this cookbook's readme.

# These channel lists MUST BE PRESENT for Kismet to work properly. It
# is not recommended that these be changed.
# IN GENERAL, if you think you want to modify these, what you REALLY want to do is
# copy them and use channellist= in the packet source.
default['kismet']['config']['channellist'] = [
  'IEEE80211b:1:3,6:3,11:3,2,7,3,8,4,9,5,10',
  'IEEE80211a:36,40,44,48,52,56,60,64,149,153,157,161,165',
  'IEEE80211ab:1:3,6:3,11:3,2,7,3,8,4,9,5,10,36,40,44,48,52,56,60,64,149,153,157,161,165',
]
default['kismet']['config']['channeldwell'] = 10

# OUI file, expected format 00:11:22<tab>manufname
# IEEE OUI file used to look up manufacturer info.  We default to the
# wireshark one since most people have that.
default['kismet']['config']['ouifile'] = [
  '/etc/manuf',
  '/usr/share/wireshark/wireshark/manuf',
  '/usr/share/wireshark/manuf',
]

# GPS configuration
if node['kismet']['enable_gpsd']
  default['kismet']['config']['gps']          = 'true'
  default['kismet']['config']['gpstype']      = 'gpsd'
  default['kismet']['config']['gpsdevice']    = '/dev/rfcomm0'
  default['kismet']['config']['gpshost']      = 'localhost:2947'
  default['kismet']['config']['gpsmodelock']  = 'false'
  default['kismet']['config']['gpsreconnect'] = 'true'
end

default['kismet']['config']['tuntap_export']     = 'false'
default['kismet']['config']['tuntap_device']     = 'kistap0'
default['kismet']['config']['preferredchannels'] = '1,6,11'
default['kismet']['config']['channelvelocity']   = 3
default['kismet']['config']['listen']            = 'tcp://127.0.0.1:2501'
default['kismet']['config']['allowedhosts']      = '127.0.0.1'
default['kismet']['config']['maxclients']        = 5
default['kismet']['config']['maxbacklog']        = 5000
default['kismet']['config']['pcapdumpformat']    = 'ppi'
default['kismet']['config']['defaultlogtitle']   = 'Kismet'

default['kismet']['config']['alerts'] = [
  'ADHOCCONFLICT,5/min,1/sec',
  'AIRJACKSSID,5/min,1/sec',
  'APSPOOF,10/min,1/sec',
  'BCASTDISCON,5/min,2/sec',
  'BSSTIMESTAMP,5/min,1/sec',
  'CHANCHANGE,5/min,1/sec',
  'CRYPTODROP,5/min,1/sec',
  'DISASSOCTRAFFIC,10/min,1/sec',
  'DEAUTHFLOOD,5/min,2/sec',
  'DEAUTHCODEINVALID,5/min,1/sec',
  'DISCONCODEINVALID,5/min,1/sec',
  'DHCPNAMECHANGE,5/min,1/sec',
  'DHCPOSCHANGE,5/min,1/sec',
  'DHCPCLIENTID,5/min,1/sec',
  'DHCPCONFLICT,10/min,1/sec',
  'NETSTUMBLER,5/min,1/sec',
  'LUCENTTEST,5/min,1/sec',
  'LONGSSID,5/min,1/sec',
  'MSFBCOMSSID,5/min,1/sec',
  'MSFDLINKRATE,5/min,1/sec',
  'MSFNETGEARBEACON,5/min,1/sec',
  'NULLPROBERESP,5/min,1/sec',
]

# Controls behavior of the APSPOOF alert.  SSID may be a literal match (ssid=) or
# a regex (ssidregex=) if PCRE was available when kismet was built.  The allowed
# MAC list must be comma-separated and enclosed in quotes if there are multiple
# MAC addresses allowed.  MAC address masks are allowed.
default['kismet']['config']['apspoof'] = [
  'Foo1:ssidregex="(?i:foobar)",validmacs=00:11:22:33:44:55',
  'Foo2:ssid="Foobar",validmacs="00:11:22:33:44:55,aa:bb:cc:dd:ee:ff"',
]

default['kismet']['config']['enablespeech'] = 'false'
default['kismet']['config']['speechbin']    = 'flite'
default['kismet']['config']['speechtype']   = 'raw'
default['kismet']['config']['enablesound']  = 'false'
default['kismet']['config']['soundbin']     = 'play'
default['kismet']['config']['sounds'] = [
  'newnet,true',
  'newcryptnet,true',
  'packet,true',
  'gpslock,true',
  'gpslost,true',
  'alert,true',
]

default['kismet']['config']['speechencoding'] = 'nato'
default['kismet']['config']['speech'] = [
  'new,"New network detected s.s.i.d. %1 channel %2"',
  'alert,"Alert %1"',
  'gpslost,"G.P.S. signal lost"',
  'gpslock,"G.P.S. signal O.K."',
]

default['kismet']['config']['alertbacklog']     = 50
default['kismet']['config']['allowkeytransmit'] = 'true'
default['kismet']['config']['writeinterval']    = 300

# logtemplate - Filename logging template.
# This is, at first glance, really nasty and ugly, but you'll hardly ever
# have to touch it so don't complain too much.
#
# %p is replaced by the logging prefix + '/'
# %n is replaced by the logging instance name
# %d is replaced by the starting date as Mon-DD-YYYY
# %D is replaced by the current date as YYYYMMDD
# %t is replaced by the starting time as HH-MM-SS
# %i is replaced by the increment log in the case of multiple logs
# %l is replaced by the log type (pcapdump, strings, etc)
# %h is replaced by the home directory
default['kismet']['config']['logtemplate'] = '%p%n-%D-%t-%i.%l'

# File types to log, comma seperated.  Built-in log file types:
# alert       Text file of alerts
# gpsxml      XML per-packet GPS log
# nettxt      Networks in text format
# netxml      Networks in XML format
# pcapdump      tcpdump/wireshark compatible pcap log file
# string      All strings seen (increases CPU load)
default['kismet']['config']['logtypes'] = 'pcapdump,gpsxml,netxml,nettxt,alert'
