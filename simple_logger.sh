#!/bin/bash

# ------------------------------
# Simple logging for Bash
#
# Written by Sagiv Barhoom
# License: Public domain;
#
# ------------------------------

verbosity=3 # default to show warnings

export log_level_silent=0
export log_level_critical=1
export log_level_error=2
export log_level_warn=3
export log_level_info=4
export log_level_debug=5


notify()   { log $log_level_silent   "    NOTE: $1"; } # Always prints
critical() { log $log_level_critical "CRITICAL: $1"; }
error()    { log $log_level_error    "   ERROR: $1"; }
warn()     { log $log_level_warn     " WARNING: $1"; }
info()     { log $log_level_info     "    INFO: $1"; } # "info" is already a command
debug()    { log $log_level_debug    "   DEBUG: $1"; }


logger_init (){
        datestring=`date +'%Y-%m-%d %H:%M:%S'`
        export verbosity=$1|| 3
        export log_file=$2 || "$0-$datestring.log"
}  # --- enf of logger_init ---

log() {
    if [ $verbosity -ge $1 ]; then
       #2020-04-12 11:45:28
       #1234567890123456789
       datestring=`date +'%Y-%m-%d %H:%M:%S'`
       printf "%-20s %s\n" "$datestring"  "$2" >> $log_file
    fi
}  # --- enf of log ---


# example:
# #!/bin/bash
# source simple_logger.sh
#
# logger_init $log_level_info "./mylog.log"
#
# notify  "this is notify msg"
# critical "this is critical msg"
# error "this is error msg"
# warn "this is warn msg"
# info "this is info msg"
# debug "this is debug msg"
#
