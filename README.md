# kismet Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/kismet.svg)](https://supermarket.chef.io/cookbooks/kismet)
[![Build Status](https://img.shields.io/circleci/project/github/sous-chefs/kismet/master.svg)](https://circleci.com/gh/sous-chefs/kismet)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

This cookbook configures the kismet wardriving application on Ubuntu.  Perfect for setting up a wardriving rig using Chef Solo.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you’d like to know more please visit [sous-chefs.org](https://sous-chefs.org/) or come chat with us on the Chef Community Slack in [#sous-chefs](https://chefcommunity.slack.com/messages/C2V7B88SF).

## Requirements

### Platforms

- Centos 6 and 7
- Debian 8 and 9
- Ubuntu 16.04 and 18.04
- Amazon 1 and 2

### Chef

- Chef 12.9+

### Cookbooks

- none

## Attributes

The attributes in this cookbook are used to drive the configuration dynamically. The following are used for the `gpsd` service.

- `enable_gpsd` - Install and use gpsd.  Defaults to true
- `start_daemon` - Start the daemon.  Defaults to true
- `gpsd_options` - Options to pass to the daemon.  Defaults to an empty string
- `devices` - Path to device.  This is only needed for serial devices.  Defaults to an
- empty string
- `usbauto` - Auto discover USB devices.  Defaults to true

The remaining attributes in the `attributes/default.rb` are directly from the `kismet.conf` file and are namespaced under `node['kismet']['config']`. Each attribute key corresponds to a configuratino option in the `kismet.conf` file.

Values can be an Integer, String or an Array. Integer and String values will be rendered like this:

```ruby
key=value
```

Array values will get an entry for each element in the array. For example, a value of `['value', 'sale', 'option']` will be rendered like this:

```ruby
key=value
key=sale
key=option
```

The Ruby literals "false" and "true" are not used for values of Kismet configuration options. They are string values instead.

In practical terms, these attributes:

```ruby
default['kismet']['config']['version'] = "2009-newcore"
default['kismet']['config']['hidedata']     = "true"
default['kismet']['config']['enablespeech'] = "false"
default['kismet']['config']['alertbacklog']     = 50
default['kismet']['config']['ouifile'] = [
  '/etc/manuf',
  '/usr/share/wireshark/wireshark/manuf',
  '/usr/share/wireshark/manuf'
]
```

Will be rendered in `/etc/kismet/kismet.conf`:

```ruby
version=2009-newcore
hidedata=true
enablespeech=false
alertbacklog=50
ouifile=/etc/manuf
ouifile=/usr/share/wireshark/wireshark/manuf
ouifile=/usr/share/wireshark/manuf
```

## Usage

Modify attributes for the configuration as required in a role. Add `recipe[kismet]` to your node's run list.

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
