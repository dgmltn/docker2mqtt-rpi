#!/bin/sh

docker run -d -e MQTT_HOST=cdb -e MQTT_TOPIC_PREFIX=devices/docker -e DOCKER2MQTT_HOSTNAME=`hostname` -e MQTT_QOS=1 -v /var/run/docker.sock:/var/run/docker.sock --name docker2mqtt-rpi docker2mqtt-rpi
