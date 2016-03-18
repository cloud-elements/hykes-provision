#!/usr/bin/env bats

function create() {
  ../../bin/hykes-provision create digitalocean --consolidated --specs=xsmall
}

function destroy() {
  ../../bin/hykes-provision destroy digitalocean --consolidated
}

function exists() {
  ../../bin/hykes-provision exists digitalocean --consolidated
}

load lib/blueprint
load lib/bats

@test 'exists should exit 1 and output false' {
  run exists; if [ "${status}" -ne 1 ]; then bats-break-set; fi
  [ "${status}" -eq 1 ]
  [ "${lines[1]}" = 'false' ]
}

@test 'create should setup consolidated digitalocean servers' {
  run create; if [ "${status}" -ne 0 ]; then bats-break-set; fi
  [ "${status}" -eq 0 ]
}

@test 'exists should exit 0 and output true' {
  run exists; if [ "${status}" -ne 0 ]; then bats-break-set; fi
  [ "${status}" -eq 0 ]
  [ "${lines[1]}" = 'true' ]
}

@test 'destroy should teardown consolidated digitalocean servers' {
  run destroy; if [ "${status}" -ne 0 ]; then bats-break-set; fi
  [ "${status}" -eq 0 ]
}
