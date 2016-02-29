#!/usr/bin/env bats

load suite

@test 'provision should create digitalocean cloud without dns' {
  ../../bin/hykes-provision provision do none --consolidated --specs=xsmall
}

@test 'unprovision should destroy digitalocean cloud without dns' {
  ../../bin/hykes-provision unprovision do none --consolidated
}
