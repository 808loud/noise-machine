#!/bin/sh


#( crontab -l ; echo "0 21 * * * /bin/tester" ) | crontab -

# store string of location where this script was called from
DIR="$( cd "$(dirname $0)" && pwd )"

# set cron job to run play script from same directory
# job will run daily at 9:00 PM (21 in 24-hour format)
( crontab -l ; echo "0 21 * * * ${DIR}/play.sh" ) | crontab -
