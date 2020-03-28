#!/bin/bash
set -x

render glance-api.conf.template -o /etc/glance/glance-api.conf

exec "$@"
