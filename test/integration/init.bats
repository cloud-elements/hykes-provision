#!/usr/bin/env bats

load suite

@test 'init should succeed predictably' {
  build/bin/hykes-provisioner init \
    --blueprint="${HYKES_PROVISIONER_BLUEPRINT}" \
    --password="${HYKES_PROVISIONER_PASSWORD}" \
    --token="${HYKES_PROVISIONER_TOKEN}"
}

@test 'init should fail predictably' {
  run build/bin/hykes-provisioner init \
    --blueprint=blueprint \
    --password=password \
    --token=token
  [ ${status} -eq 1 ]
}
