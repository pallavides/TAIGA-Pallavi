#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/.autopilot/db/a.g.bc ${1+"$@"}