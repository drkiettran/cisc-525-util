#!/bin/bash
hdfs dfs -mkdir -p /user/student/airline
hdfs dfs -mkdir -p /user/student/shakespeare
hdfs dfs -mkdir /tmp
hdfs dfs -copyFromLocal ../airline/*.csv /user/student/airline
hdfs dfs -copyFromLocal ./data/shakespeare/* /user/student/shakespeare
