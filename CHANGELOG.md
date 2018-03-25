# CHANGELOG for kismet

This file is used to list changes made in each version of the kismet cookbook.

## 0.4.1

- Fix a bad config template

## 0.4.0

- Require Chef 12.9 or later and remove the need for the apt cookbook dependency
- Updated the repo setup code to use the precise repo since that's the last published distro in the repo
- Add source_url, issue_url, and chef_version metadata
- Updated the license string in the metdata to be a SPDX compliant string
- Add a missing line ending in the config template that prevented things from loading
- Removed support for Debian 7 where packages are no longer available
- Add a Delivery local config for testing
- Update the specs for modern ChefSpec and fix them to actually run the converge test
- Add integration testing in Travis with kitchen dokken
- Add a local test kitchen config
- Switch from rubocop to cookstyle for linting
- Rename CONTRIBUTING to CONTRIBUTING.md so Supermarket will see it
- Removed all test deps from the Gemfile since users should test with ChefDK

## 0.3.0:

- Use standard chef .gitignore file
- Add .rubocop.yml file
- Add .travis.yml for testing
- Add Berksfile
- Add Contributing doc
- Add gemfile for development / testing dependencies
- Add badges to the readme
- Better document Chef / Platform deps in the readme
- Added default['kismet']['config']['logdefault']
- Add debian as a supported platform
- Add source_url and issues_url in the metadata file
- Add basic converge chefspec
- Add chefignore file to limit what files are uploaded to the server

## 0.2.0:

- Dynamic (and much improved) configuration generation. Allow values in the kismet.conf file are now tuneable
- Use the repository signature file for the kismetwireless.net apt repository

## 0.1.0:

- Initial release of kismet

--------------------------------------------------------------------------------

Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
