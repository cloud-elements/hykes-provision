#!/usr/bin/env bats

function only-with-env() {
  if [ -z "${HYKES_PROVISIONER_PATH}" ]; then skip 'Environment variables should be defined'; fi
}

function setup() {
  only-with-env
  build/bin/hykes-provisioner init "${HYKES_PROVISIONER_PATH}"
}
