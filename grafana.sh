#!/bin/bash

#Provisioning Grafana with Docker by Mayara Gouveia

docker run -d --name=grafana --restart always -p 3000:3000 -e "GF_INSTALL_PLUGINS=grafana-clock-panel,briangann-gauge-panel,alexanderzobnin-zabbix-app" -e "GF_SERVER_PROTOCOL=http" -e "GF_SERVER_HTTP_PORT=3000" --privileged --net devopslab $(weave dns-args) -v /root/grafana:/grafana jenkins.gouveia.info/grafana:1.0
