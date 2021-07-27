#!/bin/sh

# strict mode
set -eu

# compile dmenu
ret=""
if make clean && make && strip dmenu && strip stest; then
  echo "OK"
  ret=0
else
  echo "NOK"
  ret=1
fi
exit $ret
