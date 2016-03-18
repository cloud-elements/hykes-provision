#!/usr/bin/env bash

function blueprint-clone() {
  git clone git@github.com:cloud-elements/hykes-spec.git build/tmp/hykes-spec
  (cd build/tmp/hykes-spec; \
    git checkout $(git describe --tags $(git rev-list --tags --max-count=1)))
}

function blueprint-exists() {
  test -d build/tmp/hykes-spec
}
