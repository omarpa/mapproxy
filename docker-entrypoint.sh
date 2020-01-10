#!/bin/sh

#mapproxy-util create -t base-config proxy

mapproxy-util serve-develop -b 0.0.0.0 /proxy/mapproxy.yaml
#mapproxy-util serve-multiapp-develop -b 0.0.0.0 /proxy