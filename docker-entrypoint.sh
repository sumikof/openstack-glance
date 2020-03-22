#!/bin/bash
set -e

render glance-api.conf.template -o /etc/glance/glance-api.conf

exec "$@"
