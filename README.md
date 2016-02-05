# hykes-provisioner <sub><sup>| Automagically provision Cloud Elements clouds</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.0-blue.svg)](CHANGELOG.md)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-apache-blue.svg)](LICENSE.md)
[![slack](http://img.shields.io/badge/slack-join-blue.svg)](https://ce-success.herokuapp.com)
[![docs](http://img.shields.io/badge/docs-read-blue.svg)](https://ce-onprem.readthedocs.org)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provisioner.svg?style=shield&circle-token=2d35151de096fc8262c228fdd111b85b2bc0f5f9)](https://circleci.com/gh/cloud-elements/hykes-provisioner)

## Grokking
![diagram](http://share.rockymadden.com/1I1A142Y1F3V/Image%202016-01-26%20at%201.06.49%20PM.png)

## Provider Matrix

| Type  | Name            | Slug    | Status
| ----- | --------------- | ------- | ------------
| Cloud | DigitalOcean    | `do`    | Full Support
| Cloud | Amazon EC2      | `aws`   | In Development
| DNS   | DigitalOcean    | `do`    | In Development
| DNS   | Amazon Route 53 | `aws`   | In Development
| DNS   | `/etc/hosts`    | `hosts` | Full Support

## Installation

### Via Homebrew:

```bash
$ brew tap cloud-elements/hykes
$ brew install hykes-provisioner
$ hykes-provisioner init
```

### Via PPA:

In development

### Compiling from Source:

```bash
$ git clone git@github.com:cloud-elements/hykes-provisioner.git
$ cd hykes-provisioner
$ make
$ make install
$ build/bin/hykes-blueprinter init
```

> __PROTIP:__
You are responsible for ensuring all dependencies are installed, including transitive dependencies.
Examine [circle.yml](circle.yml) for a detailed example of the steps needed to compile from source
on Ubuntu.

## Usage

```bash
$ hykes-provisioner --help
Usage:
  hykes-provisioner init <path> [--quiet|-q]
  hykes-provisioner provision <cloud-provider> <dns-provider>
    [--consolidated|-c] [--specs|-s <xsmall|small|medium|large|xlarge>] [--quiet|-q]
  hykes-provisioner unprovision <cloud-provider> <dns-provider>
    [--consolidated|-c] [--quiet|-q]

Configuration Commands:
  init    Initialize to work against the given blueprint

Core Commands:
  provision      Provision cloud
  unprovision    Unprovision cloud

More Information:
  chat    https://ce-success.herokuapp.com
  docs    https://ce-onprem.readthedocs.org
  repo    https://github.com/cloud-elements/hykes-provisioner
```

> __PROTIPS:__
* Ensure Tugboat and/or the AWS CLI are initialized themselves before issuing any core commands.
* `dns-provider` defaults to `hosts` when not explicitly provided.
* `specs` defaults to `medium` when not explicitly provided.
* All commands prompt for required arguments which were not provided via options or arguments. This
allows for both traditional usage and prompt-based usage.
* All arguments can be provided as options (e.g. `[--cloud-provider|-c <cloud-provider>]`,
`[--dns-provider|-d <dns-provider>]`, `[--path|-P <path>]`).

## Changelog

See [CHANGELOG.md](CHANGELOG.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

See [LICENSE.md](LICENSE.md)
