kismet Cookbook
===============
This cookbook configures the kismet wardriving application on Ubuntu.  Perfect for 
setting up a wardriving rig using Chef Solo.

Requirements
------------
- `apt` - Apt is used to configure the kismet repository

Attributes
----------
This recipe has an enormous number of attributes.  Your best bet for understanding all
attributes is to check the attributes file and also read the kismet.conf.erb template 
file.  That file best describes all configuration options

- `enable_gpsd` - Install and use gpsd.  Defaults to true
- `start_daemon` - Start the daemon.  Defaults to true
- `gpsd_options` - Options to pass to the daemon.  Defaults to an empty string
- `devices` - Path to device.  This is only needed for serial devices.  Defaults to an
empty string
- `usbauto` - Auto discover USB devices.  Defaults to true

- `servername` - "my_server"
- `logprefix` - "/var/log/kismet"
- `allowplugins` - "true"
- `ncsource` - The source interface to listen on.  This is probably the most important 
attribute in this cookbook.  Defaults to nil.
- `preferredchannels` - Channels to dwell on
- `channelvelocity` - The number of seconds to stay on each channel
- `listen` - URL the server listens on
- `allowedhosts` - Hosts allowed to connect to the server.  Defaults to 127.0.0.1
- `logtypes` - Log types to log.  Defaults to "pcapdump,gpsxml,netxml,nettxt,alert"
- `pcapdumpformat` - Pcap dump format. Defaults to "ppi"
- `defaultlogtitle` - Log title prefix.  Defaults to "Kismet"
- `maxclients` - Max clients allowed to connect to the server.  Defaults to "5"
- `maxbacklog` - Max backlog before the server disconnects clients.  Defaults to "5000"

Usage
-----
Run the default recipe on your node

Contributing
------------
- 1. Fork the repository on Github
- 2. Write you change
- 3. Submit a Pull Request using Github

License and Authors
-------------------
Tim Smith - tsmith84@gmail.com
