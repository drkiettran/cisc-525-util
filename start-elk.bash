#!/bin/bash
echo 'starting ELK 7.6.1'

cd ~/apps/elk-7.6.1
gnome-terminal --title="starting ElasticSearch" -- ~/apps/elk-7.6.1/elasticsearch-7.6.1/bin/elasticsearch

gnome-terminal --title="starting Logstash" -- ~/apps/elk-7.6.1/logstash-7.6.1/bin/logstash

gnome-terminal --title="starting Kibana" -- ~/apps/elk-7.6.1/kibana-7.6.1-linux-x86_64/bin/kibana

