kismet Cookbook
===============

This cookbook configures the kismet wardriving application on Ubuntu.  Perfect for
setting up a wardriving rig using Chef Solo.

Requirements
------------

- `apt` - Apt is used to configure the kismet repository

Attributes
----------

The attributes in this cookbook are used to drive the configuration
dynamically. The following are used for the `gpsd` service.

- `enable_gpsd` - Install and use gpsd.  Defaults to true
- `start_daemon` - Start the daemon.  Defaults to true
- `gpsd_options` - Options to pass to the daemon.  Defaults to an empty string
- `devices` - Path to device.  This is only needed for serial devices.  Defaults to an
empty string
- `usbauto` - Auto discover USB devices.  Defaults to true

The remaining attributes in the `attributes/default.rb` are directly
from the `kismet.conf` file and are namespaced under
`node['kismet']['config']`. Each attribute key corresponds to a
configuratino option in the `kismet.conf` file.

Values can be an Integer, String or an Array. Integer and String
values will be rendered like this:

    key=value

Array values will get an entry for each element in the array. For
example, a value of `['value', 'sale', 'option']` will be rendered
like this:

    key=value
    key=sale
    key=option

The Ruby literals "false" and "true" are not used for values of Kismet
configuration options. They are string values instead.

In practical terms, these attributes:

    default['kismet']['config']['version'] = "2009-newcore"
    default['kismet']['config']['hidedata']     = "true"
    default['kismet']['config']['enablespeech'] = "false"
    default['kismet']['config']['alertbacklog']     = 50
    default['kismet']['config']['ouifile'] = [
      '/etc/manuf',
      '/usr/share/wireshark/wireshark/manuf',
      '/usr/share/wireshark/manuf'
    ]

Will be rendered in `/etc/kismet/kismet.conf`:

    version=2009-newcore
    hidedata=true
    enablespeech=false
    alertbacklog=50
    ouifile=/etc/manuf
    ouifile=/usr/share/wireshark/wireshark/manuf
    ouifile=/usr/share/wireshark/manuf

Usage
-----

Modify attributes for the configuration as required in a role. Add
`recipe[kismet]` to your node's run list.

Contributing
------------

- 1. Fork the repository on Github
- 2. Write you change
- 3. Submit a Pull Request using Github

Testing
-------

Test that the default recipe converges automatically with
[test-kitchen](http://rubygems.org/gems/test-kitchen).

    bundle install
    bundle exec kitchen test

License and Authors
-------------------

- Tim Smith <tsmith84@gmail.com>
- Joshua Timberman <opensource@housepub.org>

Copyright:: 2013, Tim Smith
License:: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
