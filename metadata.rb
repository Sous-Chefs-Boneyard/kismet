name             'kismet'
maintainer       'Tim Smith'
maintainer_email 'tsmith84@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures kismet'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

%w(debian ubuntu).each do |os|
  supports os
end

depends 'apt'

source_url 'https://github.com/tas50/chef-kismet' if respond_to?(:source_url)
issues_url 'https://github.com/tas50/chef-kismet/issues' if respond_to?(:issues_url)

chef_version '>= 11.0' if respond_to?(:chef_version)
