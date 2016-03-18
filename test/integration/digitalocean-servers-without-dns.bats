#!/usr/bin/env bats

load suite

@test 'exists should exit 1 and output false' {
  run ../../bin/hykes-provision exists do --consolidated
  [ "${status}" -eq 1 ]
  [ "${lines[0]}" = 'false' ]
}

@test 'create should setup digitalocean servers' {
  ../../bin/hykes-provision create do --consolidated --specs=xsmall
}

@test 'exists should exit 0 and output true' {
  run ../../bin/hykes-provision exists do --consolidated
  [ "${status}" -eq 0 ]
  [ "${lines[0]}" = 'true' ]
}

@test 'destroy should teardown digitalocean servers' {
  ../../bin/hykes-provision destroy do --consolidated
}
