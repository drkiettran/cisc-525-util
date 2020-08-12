#!/bin/bash
hdfs dfs -mkdir -p /user/student
hdfs dfs -mkdir /tmp
hdfs dfs -copyFromLocal $HOME/cisc525/airline /user/student
hdfs dfs -copyFromLocal $HOME/cisc525/cisc-525-util/data/shakespeare /user/student
hdfs dfs -copyFromLocal $HOME/cisc525/COVID-19/csse_covid_19_data /user/student
