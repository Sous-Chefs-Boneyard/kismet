# CHANGELOG for kismet
This file is used to list changes made in each version of the kismet cookbook.

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
- Dynamic (and much improved) configuration generation.  Allow values in the kismet.conf file are now tuneable
- Use the repository signature file for the kismetwireless.net apt repository

## 0.1.0:
- Initial release of kismet

--------------------------------------------------------------------------------

Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
