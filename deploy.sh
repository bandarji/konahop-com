#!/bin/bash

function main() {
  local src_dir="/Users/sellis/src/bandarji/konahop-com/"
  local dst_dir="konahop:~/konahop.com/"
  local rs_args1="--recursive --links --times --compress --human-readable"
  local rs_args2="--progress --ipv4 --exclude-from=NODEPLOY -e ssh"
  cd ${src_dir} && rsync ${rs_args1} ${rs_args2} ./ ${dst_dir}
}

main "${@}"
