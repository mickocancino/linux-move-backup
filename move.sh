#!/bin/bash

cd /home && find . -maxdepth 2 -type f -name 'backup-*.tar.gz' | grep -v 'virtfs' > /tmp/tar2
more /tmp/tar2 | awk '{ print "mv -f /home/"$1" /backup2//" }' > /tmp/move.sh
chmod a+x /tmp/move.sh
sh /tmp/move.sh
rm -f /tmp/move.sh
