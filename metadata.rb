name             'kismet'
maintainer       'Tim Smith'
maintainer_email 'tsmith84@gmail.com'
license          'Apache-2.0'
description      'Installs/Configures kismet'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.1'

%w(debian ubuntu).each do |os|
  supports os
end

source_url 'https://github.com/tas50/chef-kismet'
issues_url 'https://github.com/tas50/chef-kismet/issues'

chef_version '>= 12.9' if respond_to?(:chef_version)
