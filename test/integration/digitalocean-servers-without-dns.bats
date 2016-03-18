#!/usr/bin/env bats

load suite

@test 'exists should exit 1 and output false' {
  run ../../bin/hykes-provision exists digitalocean --consolidated
  [ "${status}" -eq 1 ]
  [ "${lines[1]}" = 'false' ]
}

@test 'create should setup digitalocean servers' {
  ../../bin/hykes-provision create digitalocean --consolidated --specs=xsmall
}

@test 'exists should exit 0 and output true' {
  run ../../bin/hykes-provision exists digitalocean --consolidated
  [ "${status}" -eq 0 ]
  [ "${lines[1]}" = 'true' ]
}

@test 'destroy should teardown digitalocean servers' {
  ../../bin/hykes-provision destroy digitalocean --consolidated
}
