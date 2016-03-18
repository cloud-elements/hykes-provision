# hykes-provision <sub><sup>| Cloud Elements Enterprise infrastructure management</sup></sub>
[![version](http://img.shields.io/badge/version-0.2.1-blue.svg)](CHANGELOG.md)
[![spec](http://img.shields.io/badge/spec-%3E%3D%200.0.0-blue.svg)](https://github.com/cloud-elements/hykes-spec)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](CONTRIBUTING.md)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](CONTRIBUTING.md)
[![pm](http://img.shields.io/badge/pm-zenhub-blue.svg)](CONTRIBUTING.md)
[![docs](http://img.shields.io/badge/docs-read-blue.svg)](https://developers.cloud-elements.com)
[![forum](http://img.shields.io/badge/forum-join-blue.svg)](https://forum.cloud-elements.com)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provision.svg?style=shield)](https://circleci.com/gh/cloud-elements/hykes-provision)

## Provider Support Matrix

| Name         | Slug(s)                | Servers   | DNS
| ------------ | ---------------------- | --------- | ---------
| DigitalOcean | `digitalocean` or `do` | __Yes__   | No (TBA)
| `/etc/hosts` | `hosts`                | N/A       | __Yes__

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
  hykes-provision create <digitalocean|do> [--consolidated] [--dns=<hosts>]
    [--specs=<xsmall|small|medium|large|xlarge>] [--quiet]
  hykes-provision destroy <digitalocean|do> [--consolidated] [--dns=<hosts>] [--quiet]
  hykes-provision exists <digitalocean|do> [--consolidated] [--quiet]

Core Commands:
  create     Create infrastructure
  destroy    Destroy infrastructure
  exists     Output boolean indicating if infrastructure exists

More Information:
  docs     https://developers.cloud-elements.com
  forum    https://forum.cloud-elements.com
  repo     https://github.com/cloud-elements/hykes-provision
```

> __PROTIPS:__
* Ensure [Tugboat](https://github.com/pearkes/tugboat) and/or the
[AWS CLI](https://github.com/aws/aws-cli) are initialized themselves before issuing any commands.
* `specs` defaults to `medium` when not explicitly provided.
* All commands prompt for required arguments which were not provided via options or arguments. This
allows for both traditional usage and prompt-based usage.

## Changelog

See [CHANGELOG.md](CHANGELOG.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

See [LICENSE.md](LICENSE.md)
