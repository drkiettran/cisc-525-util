#!/bin/bash
hdfs dfs -mkdir -p /user/student
hdfs dfs -mkdir /tmp
hdfs dfs -copyFromLocal $HOME/data/airline /user/student
hdfs dfs -copyFromLocal $HOME/data/shakespeare /user/student
hdfs dfs -copyFromLocal $HOME/data/COVID-19/csse_covid_19_data /user/student
