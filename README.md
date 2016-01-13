# hykes-provisioner <sub><sup>| Automagically provision Cloud Elements clouds</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.0-blue.svg)](CHANGELOG.md)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-apache-blue.svg)](LICENSE.md)
[![slack](http://img.shields.io/badge/slack-join-blue.svg)](https://ce-success.herokuapp.com/)
[![docs](http://img.shields.io/badge/docs-read-blue.svg)](https://developers.cloud-elements.com/docs/on-prem/)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provisioner.svg?style=shield&circle-token=2d35151de096fc8262c228fdd111b85b2bc0f5f9)](https://circleci.com/gh/cloud-elements/hykes-provisioner)

## Installation

### Via `brew`:

#### OS X:

```bash
$ brew tap cloud-elements/ops git@github.com:cloud-elements/homebrew-ops.git
$ brew install hykes-provisioner
```

### Via `git clone`:

> __PROTIP:__ Since this route does not place `hykes-provisioner` on your `PATH`, you must reference
it relatively (e.g. `build/bin/hykes-provisioner`).

#### OS X:

```bash
$ git clone git@github.com:cloud-elements/hykes-provisioner.git
$ cd hykes-provisioner
$ git checkout tags/v0.0.0
$ make dependencies && make install
```

#### Debian/Ubuntu:

```bash
$ git clone git@github.com:cloud-elements/hykes-provisioner.git
$ cd hykes-provisioner
$ git checkout tags/v0.0.0
$ sudo make dependencies && make install
```

## Usage

```bash
$ hykes-provisioner --help
Usage:
  hykes-provisioner create <provider> [--consolidated|-c] [--local-dns|-l]
    [--specs|-s <tiny|small|medium|large|huge>]
  hykes-provisioner init <blueprint> [--password|-p <password>] [--token|-t <token>]
  hykes-provisioner destroy <provider> [--consolidated|-c] [--local-dns|-l]

Setup Commands:
  init    Initialize to use a specific blueprint

Core Commands:
  create     Create cloud
  destroy    Destroy cloud
```

> __PROTIP:__ Ensure Tugboat and/or the AWS CLI are initialized themselves before issuing any core
commands.

> __PROTIP:__ All commands prompt for required arguments which were not provided via options or
arguments. This allows for both traditional usage and prompt-based usage.

## Changelog

See [CHANGELOG.md](CHANGELOG.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

See [LICENSE.md](LICENSE.md)
