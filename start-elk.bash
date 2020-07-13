#!/bin/bash
echo 'starting ELK 7.6.1'

cd ~/dev/elk-7.6.1
gnome-terminal --title="starting ElasticSearch" -- ~/dev/elk-7.6.1/elasticsearch-7.6.1/bin/elasticsearch

gnome-terminal --title="starting Logstash" -- ~/dev/elk-7.6.1/logstash-7.6.1/bin/logstash

gnome-terminal --title="starting Kibana" -- ~/dev/elk-7.6.1/kibana-7.6.1-linux-x86_64/bin/kibana

