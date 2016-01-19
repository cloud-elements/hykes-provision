# hykes-provisioner <sub><sup>| Automagically provision Cloud Elements clouds</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.0-blue.svg)](CHANGELOG.md)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-apache-blue.svg)](LICENSE.md)
[![slack](http://img.shields.io/badge/slack-join-blue.svg)](https://ce-success.herokuapp.com/)
[![docs](http://img.shields.io/badge/docs-read-blue.svg)](https://ce-onprem.readthedocs.org)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provisioner.svg?style=shield&circle-token=2d35151de096fc8262c228fdd111b85b2bc0f5f9)](https://circleci.com/gh/cloud-elements/hykes-provisioner)

## Installation

### Via `brew`:

```bash
$ brew tap cloud-elements/hykes git@github.com:cloud-elements/homebrew-hykes.git
$ brew install hykes-provisioner
$ hykes-provisioner init
```

### Via `git clone`:

```bash
$ git clone git@github.com:cloud-elements/hykes-provisioner.git
$ cd hykes-provisioner
$ git checkout tags/v0.0.0
$ make dependencies && make install
$ build/bin/hykes-provisioner init
```

> __PROTIPS:__
* `git clone` installation method does not place `hykes-provisioner` on your `PATH`, so you must
reference it relatively (e.g. `build/bin/hykes-provisioner`).
* `make dependencies` on Linux requires `sudo`.

## Usage

```bash
$ hykes-provisioner --help
Usage:
  hykes-provisioner init <blueprint> [--password|-p <password>] [--token|-t <token>]
  hykes-provisioner provision <provider> [--consolidated|-c] [--local-dns|-l]
    [--specs|-s <tiny|small|medium|large|huge>]
  hykes-provisioner unprovision <provider> [--consolidated|-c] [--local-dns|-l]

Install Commands:
  init    Initialize to use a specific blueprint

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
* `--specs` option defaults to `medium` when not explicitly provided.
* All commands prompt for required arguments which were not provided via options or arguments. This
allows for both traditional usage and prompt-based usage.

## Changelog

See [CHANGELOG.md](CHANGELOG.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

See [LICENSE.md](LICENSE.md)
