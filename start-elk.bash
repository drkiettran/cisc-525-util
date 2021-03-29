#!/bin/bash
echo 'starting ELK 7.6.1'
export ELK_HOME=~/apps/elk
cd $ELK_HOME
gnome-terminal --title="starting ElasticSearch" -- $ELK_HOME/elasticsearch-7.6.1/bin/elasticsearch

gnome-terminal --title="starting Logstash" -- $ELK_HOME/logstash-7.6.1/bin/logstash

gnome-terminal --title="starting Kibana" -- $ELK_HOME/kibana-7.6.1-linux-x86_64/bin/kibana

