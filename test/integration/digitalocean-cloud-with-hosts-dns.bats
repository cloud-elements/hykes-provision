#!/usr/bin/env bats

load suite

@test 'provision should create digitalocean cloud with hosts dns' {
  build/bin/hykes-provisioner provision do hosts --consolidated --specs=xsmall
}

@test 'unprovision should destroy digitalocean cloud with hosts dns' {
  build/bin/hykes-provisioner unprovision do hosts --consolidated
}
