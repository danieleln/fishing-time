#!/usr/bin/bash



LOG_FILE="/tmp/fishing_time.log"

# path of the current script
__HERE__=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# initializing the log file
echo "fishing-time"                                         >  $LOG_FILE
date                                                        >> $LOG_FILE


chmod u+x ${__HERE__}/src/_set_up_fish.bash
${__HERE__}/src/_set_up_fish.bash ${LOG_FILE}
