# hykes-provision <sub><sup>| Automagically provision Hykes clouds</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.0-blue.svg)](https://github.com/cloud-elements/hykes-provision/blob/master/CHANGELOG.md)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-apache-blue.svg)](https://github.com/cloud-elements/hykes-provision/blob/master/LICENSE.md)
[![slack](http://img.shields.io/badge/slack-join-blue.svg)](https://ce-success.herokuapp.com/)
[![docs](http://img.shields.io/badge/docs-read-blue.svg)](https://developers.cloud-elements.com/docs/on-prem/)
[![circleci](https://circleci.com/gh/cloud-elements/hykes-provision.svg?style=shield&circle-token=2d35151de096fc8262c228fdd111b85b2bc0f5f9)](https://circleci.com/gh/cloud-elements/hykes-provision)

## Installation

### Via `brew`:

#### OS X:

```bash
$ brew tap cloud-elements/ops git@github.com:cloud-elements/homebrew-ops.git
$ brew install hykes-provision
```

### Via `git clone`:

> __PROTIP:__ Since this route does not place `hykes-provision` on your `PATH`, you must reference
it relatively (e.g. `build/bin/hykes-provision`).

#### OS X:

```bash
$ git clone git@github.com:cloud-elements/hykes-provision.git
$ cd hykes-provision
$ git checkout tags/v0.0.0
$ make dependencies && make install
```

#### Debian/Ubuntu:

```bash
$ git clone git@github.com:cloud-elements/hykes-provision.git
$ cd hykes-provision
$ git checkout tags/v0.0.0
$ sudo make dependencies && make install
```

## Usage

```bash
$ hykes-provision --help
Usage:
  hykes-provision create <provider> [--combined|-c] [--local-dns|-l]
  hykes-provision init <blueprint> [--password|-p <password>] [--token|-t <token>]
  hykes-provision destroy <provider>

Setup Commands:
  init    Initialize to use a specific blueprint

Core Commands:
  create     Create cloud
  destroy    Destroy cloud
```

> __PROTIP:__ All commands prompt for required arguments which were not provided via options or
arguments. This allows for both traditional usage and prompt-based usage.

## Changelog

See [CHANGELOG.md](CHANGELOG.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

See [LICENSE.md](LICENSE.md)
