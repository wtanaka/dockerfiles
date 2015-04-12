#!/bin/sh
# Copyright (C) 2015 Wesley Tanaka
# Creates a docker image for Ubuntu Trusty Tahr (14.04 LTS)
# Useful, for example on i386 or i686 systems
ROOTFSDIR=`mktemp -d`
ROOTTAR=`mktemp /tmp/trusty-XXXXX-rootfs.tar.gz`
sudo debootstrap trusty "$ROOTFSDIR"
sudo tar cvfz "$ROOTTAR" -C "$ROOTFSDIR" .
cat "$ROOTTAR" | docker import - wtanaka/trusty32
sudo docker push wtanaka/trusty32
