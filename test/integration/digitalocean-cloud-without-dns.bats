#!/usr/bin/env bats

load suite

@test 'create should setup digitalocean servers without concern for dns' {
  ../../bin/hykes-provision create do --consolidated --specs=xsmall
}

@test 'destroy should teardown digitalocean servers without concern for dns' {
  ../../bin/hykes-provision destroy do --consolidated
}
