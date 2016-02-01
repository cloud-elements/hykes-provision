#!/usr/bin/env bats

function setup() {
  if [ -z "${HYKES_PROVISIONER_PATH}" ]; then
    skip 'Environment variables should be defined'
  fi

  build/bin/hykes-provisioner init "${HYKES_PROVISIONER_PATH}"
}
