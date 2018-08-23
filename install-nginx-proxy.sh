#!/usr/bin/env sh

docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy

# eg.
# docker run -e VIRTUAL_HOST=foo.bar.com  ...
