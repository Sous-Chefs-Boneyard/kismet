# CHANGELOG for kismet

This file is used to list changes made in each version of the kismet cookbook.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## 0.4.13 - *2023-10-03*

## 0.4.12 - *2023-09-29*

## 0.4.11 - *2023-07-10*

## 0.4.10 - *2023-05-16*

## 0.4.9 - *2023-05-03*

## 0.4.8 - *2023-04-01*

## 0.4.7 - *2023-03-02*

- Standardise files with files in sous-chefs/repo-management

## 0.4.6 - *2023-02-14*

- Standardise files with files in sous-chefs/repo-management

## 0.4.5 - *2023-02-14*

- Remove delivery folder

## 0.4.4 - *2021-08-31*

- Standardise files with files in sous-chefs/repo-management

## [0.4.3 - *2021-06-01*]

- migrate to actions

## [0.4.2] - 2019-08-20

- The apt repo setup to work on newer Ubuntu/Debian releases
- The cookbook to be maintained by Sous Chefs

### Removed

- `long_description` metadata, which is unused by Chef Infra Client

## [0.4.1] - 2018-03-26

### Fixed

- A bad config template

## [0.4.0] - 2017-09-17

- `source_url`, `issue_url`, and `chef_version` metadata
- A missing line ending in the config template that prevented things from loading
- A Delivery local config for testing
- Integration testing in Travis with kitchen dokken
- A local test kitchen config

- Require Chef 12.9 or later and remove the need for the apt cookbook dependency
- The repo setup code to use the precise repo since that's the last published distro in the repo
- The license string in the metdata to be a SPDX compliant string
- The specs for modern ChefSpec and fix them to actually run the converge test
- Switch from rubocop to cookstyle for linting
- Renamed CONTRIBUTING to CONTRIBUTING.md so Supermarket will see it
- Support for Debian 7 where packages are no longer available
- All test deps from the Gemfile since users should test with ChefDK

## [0.3.0] - 2015-09-15

- .rubocop.yml file
- .travis.yml for testing
- Berksfile
- Contributing doc
- gemfile for development / testing dependencies
- badges to the readme
- `default['kismet']['config']['logdefault']`
- debian as a supported platform
- source_url and issues_url in the metadata file
- basic converge chefspec
- chefignore file to limit what files are uploaded to the server

- Better document Chef / Platform deps in the readme
- Use standard chef .gitignore file

## 0.2.0

- Dynamic (and much improved) configuration generation. Allow values in the kismet.conf file are now tuneable
- Use the repository signature file for the kismetwireless.net apt repository

## 0.1.0

- Initial release of kismet

--------------------------------------------------------------------------------

Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.

[0.4.3 - *2021-06-01*]: https://github.com/sous-chefs/kismet/compare/v0.4.2...HEAD
[0.4.2]: https://github.com/sous-chefs/kismet/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/sous-chefs/kismet/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/sous-chefs/kismet/compare/0.3.0...v0.4.0
[0.3.0]: https://github.com/sous-chefs/kismet/releases/tag/0.3.0
