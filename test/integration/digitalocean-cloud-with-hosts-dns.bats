#!/usr/bin/env bats

load suite

@test 'create should setup digitalocean servers and /etc/hosts dns' {
  ../../bin/hykes-provision create do --dns=hosts --consolidated --specs=xsmall
}

@test 'destroy should teardown digitalocean servers and /etc/hosts dns' {
  ../../bin/hykes-provision destroy do --dns=hosts --consolidated
}
