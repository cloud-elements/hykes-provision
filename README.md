# hykes-provision <sub><sup>| Automagically provision Cloud Elements clouds</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.2-blue.svg)](CHANGELOG.md)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-apache-blue.svg)](LICENSE.md)
[![pm](http://img.shields.io/badge/pm-zenhub-blue.svg)](https://www.zenhub.io)
[![docs](http://img.shields.io/badge/docs-read-blue.svg)](http://dev.cloud-elements.com)
[![forum](http://img.shields.io/badge/forum-join-blue.svg)](http://forum.cloud-elements.com)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provision.svg?style=shield)](https://circleci.com/gh/cloud-elements/hykes-provision)

## Cloud Provider Matrix

| Name         | Slug    | Supported
| ------------ | ------- | ---------
| Amazon       | `aws`   | No
| DigitalOcean | `do`    | __Yes__

## DNS Provider Matrix

| Name         | Slug    | Supported
| ------------ | ------- | ---------
| Amazon       | `aws`   | No
| DigitalOcean | `do`    | No
| `/etc/hosts` | `hosts` | __Yes__

## Installation

### Via Homebrew:

```bash
# Install via tap:
$ brew tap cloud-elements/hykes
$ brew install hykes-provision

# Install Tugboat via brew-gem, if using DigitalOcean as a provider:
$ brew install brew-gem
$ brew gem install tugboat
```

### Via PPA:

In development

### Compiling from Source:

```bash
$ git clone git@github.com:cloud-elements/hykes-provision.git
$ cd hykes-provision
$ make
$ make install
```

> __PROTIP:__
You are responsible for ensuring all dependencies are installed, including transitive dependencies.
Examine [circle.yml](circle.yml) for a detailed example of the steps needed to compile from source
on Ubuntu.

## Usage

```bash
$ hykes-provision --help
Usage:
  hykes-provision provision <cloud-provider> <dns-provider>
    [--consolidated|-c] [--specs|-s <xsmall|small|medium|large|xlarge>] [--quiet|-q]
  hykes-provision unprovision <cloud-provider> <dns-provider>
    [--consolidated|-c] [--quiet|-q]

Core Commands:
  provision      Provision cloud
  unprovision    Unprovision cloud

More Information:
  docs     http://dev.cloud-elements.com
  forum    http://forum.cloud-elements.com
  repo     https://github.com/cloud-elements/hykes-provision
```

> __PROTIPS:__
* Ensure [Tugboat](https://github.com/pearkes/tugboat) and/or the
[AWS CLI](https://github.com/aws/aws-cli) are initialized themselves before issuing any commands.
* `specs` defaults to `medium` when not explicitly provided.
* All commands prompt for required arguments which were not provided via options or arguments. This
allows for both traditional usage and prompt-based usage.
* All arguments can be provided as options (e.g. `[--cloud-provider|-c <cloud-provider>]`,
`[--dns-provider|-d <dns-provider>]`).

## Changelog

See [CHANGELOG.md](CHANGELOG.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

See [LICENSE.md](LICENSE.md)
