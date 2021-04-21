#!/bin/bash -x

function main() {
  cd /Users/sellis/src/bandarji/konahop-com/ \
    && ssh konahop 'cd konahop.com && tar zcf - images/' | tar zxvf -
}

main "${@}"
