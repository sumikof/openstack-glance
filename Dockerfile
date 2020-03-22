FROM sumikof/openstack-base

RUN apt update -y \
 && apt -y install glance \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

ADD glance-api.conf.template /template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
