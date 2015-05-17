#!/bin/sh
# Copyright (C) 2015 Wesley Tanaka
# Creates a docker image for Oracle Java 8
sudo docker build \
   -t wtanaka/java8-oracle:`git describe --always | tr :A-Z -a-z` \
   java8-oracle/
sudo docker push wtanaka/java8-oracle
