#! /bin/sh
#
# startup.sh
# Copyright (C) 2016 js <js@yoga>
#
# Distributed under terms of the MIT license.
#


echo "marathon = $MARATHON_LIST" >> /mnt/mesos/sandbox/nixy.toml
cp  /etc/nginx/nginx.conf  /mnt/mesos/sandbox/nginx.conf
ln -sf /mnt/mesos/sandbox/nginx.conf /etc/nginx/nginx.conf
nginx

exec nixy -f /mnt/mesos/sandbox/nixy.toml
