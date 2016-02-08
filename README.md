# hykes-provisioner <sub><sup>| Automagically provision Cloud Elements clouds</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.0-blue.svg)](CHANGELOG.md)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-apache-blue.svg)](LICENSE.md)
[![chat](http://img.shields.io/badge/chat-slack-blue.svg)](https://ce-success.herokuapp.com)
[![docs](http://img.shields.io/badge/docs-repo-blue.svg)](https://github.com/cloud-elements/hykes-docs)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provisioner.svg?style=shield)](https://circleci.com/gh/cloud-elements/hykes-provisioner)

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
$ build/bin/hykes-provisioner init
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
* Ensure Tugboat and/or the AWS CLI are initialized themselves before issuing any commands.
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
