#! /bin/sh
#
# startup.sh
# Copyright (C) 2016 js <js@yoga>
#
# Distributed under terms of the MIT license.
#


echo "marathon = $MARATHON_LIST" >> /mnt/mesos/sandbox/nixy.toml

nginx

exec nixy -f /mnt/mesos/sandbox/nixy.toml
