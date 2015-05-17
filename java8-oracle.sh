#!/bin/sh
# Copyright (C) 2015 Wesley Tanaka
docker build \
   -t wtanaka/java8-oracle:`git describe --always | tr :A-Z -a-z` \
   java8-oracle
