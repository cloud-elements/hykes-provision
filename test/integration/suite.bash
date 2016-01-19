#!/usr/bin/env bash

function setup() {
  if [ -z "${HYKES_PROVISIONER_BLUEPRINT}" ] || \
     [ -z "${HYKES_PROVISIONER_PASSWORD}" ] || \
     [ -z "${HYKES_PROVISIONER_TOKEN}" ]; then

    skip 'Environment variables should be defined'
  fi
}
