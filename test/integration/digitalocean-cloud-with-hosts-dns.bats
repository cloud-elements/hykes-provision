#!/usr/bin/env bats

load suite

@test 'provision should create digitalocean cloud with hosts dns' {
  build/bin/hykes-provision provision do hosts --consolidated --specs=xsmall
}

@test 'unprovision should destroy digitalocean cloud with hosts dns' {
  build/bin/hykes-provision unprovision do hosts --consolidated
}
