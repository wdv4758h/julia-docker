#!/bin/sh
# Helper function to watch logfiles once they are created
watch_the_log()
{
    while [ ! -f "$1" ]; do
        sleep 1;
    done
    tail -f "$1" 2>/dev/null
}
# Start a log watcher in the background for twistd.log
watch_the_log /buildbot/master/twistd.log &

# Start our buildbot!
cd /buildbot/master
exec twistd -ny buildbot.tac
