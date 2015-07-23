#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/controls/TAIGA/HLS/FIFO_multiplexer/FIFO-multiplexer_solution/.autopilot/db/a.g.bc ${1+"$@"}
