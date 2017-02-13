## Nixy on Alpine

This is the simples nixy on alpine which I've used to migrate from marathon-lb ( HAProxy ) to nginx based lb

Simply run with

    docker run -e MARATHON_LIST='["http://master.mesos:5050/service/marathon"]' forestscribe/nixy

You need to provide nixy.toml and nginx.tmpl in the sandbox or your marathon app (downloaded via uris)

## marathon-lb label

I've added HAPROXY_0_VHOST label handling to make it compatible with services in dcos already available via marathon-lb
