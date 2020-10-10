#!/bin/bash
cd /usr/local/hadoop/sbin
hdfs namenode -format
./start-all.sh
