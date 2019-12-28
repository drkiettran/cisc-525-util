#!/bin/bash
hdfs dfs -mkdir -p /user/student/airline
hdfs dfs -mkdir -p /user/student/shakespeare
hdfs dfs -mkdir /tmp
hdfs dfs -copyFromLocal ~/dev/util/data/airline/* /user/student/airline
hdfs dfs -copyFromLocal ~/dev/util/data/shakespeare/* /user/student/shakespeare
