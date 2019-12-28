#!/bin/bash
cd /usr/local/hadoop/sbin
rm -rf /tmp/hadoop-*
hdfs namenode -format
./start-all.sh
