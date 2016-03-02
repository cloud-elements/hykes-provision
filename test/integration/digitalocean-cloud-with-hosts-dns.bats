#!/usr/bin/env bats

load suite

@test 'create should setup digitalocean servers with /etc/hosts dns' {
  ../../bin/hykes-provision create do hosts --consolidated --specs=xsmall
}

@test 'destroy should teardown digitalocean servers with /etc/hosts dns' {
  ../../bin/hykes-provision destroy do hosts --consolidated
}
