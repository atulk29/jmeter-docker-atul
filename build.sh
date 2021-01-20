#!/bin/bash

JMETER_VERSION="5.4"

docker build --build-arg JMETER_VERSION=${JMETER_VERSION} -t "atul-jmeter-docker-image:${JMETER_VERSION}" .
