#!/bin/bash

env
mv /usr/lib/rabbitmq/etc/rabbitmq/rabbitmq.config /usr/lib/rabbitmq/etc/rabbitmq/rabbitmq.config.work
envsubst < /usr/lib/rabbitmq/etc/rabbitmq/rabbitmq.config.work > /usr/lib/rabbitmq/etc/rabbitmq/rabbitmq.config

exec "$@"
