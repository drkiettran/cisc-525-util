# CISC 525 - Big Data Architecture - Summer 2021
This file is updated each semester and it is used as a starting point the the class.

Last updated: **`29 April 2021`**

## Important links:
You can download the airline performance data, the virtual machine (VM) and all 
the necessary tools for the CISC 525 Big Data Architecture class.

### Oracle Virtual Box:
  - https://www.virtualbox.org/
  
### Ubuntu 18.04 VM for the class is located here (Summer 2021):
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EQcKoWN9RWFAhF40jCZix00B3a75Q-Wzz6g1BKD657zhaw?e=C0xjxf

## tools.zip file:
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EVTQDPLbK4pMrK_UK70_dOYBW75pbM4-01hq5Ofbo8HqyA?e=fgTUtf
  
## apps.zip file:
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EX6suDepr4ZAr2o1ktWDEswBunXdx4B6IHEnvP872mVcrQ?e=SmEcqI

## Airline performance data is located here:
  - https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/HG7NV7


## Instructions
Follow the following instructions:
- Download & Install Oracle Virtual Box software and the 'extension pack'
- Download the VM image (Oracle VM appliance)
- Import the appliance downloaded from step above
- Download and extract dev.zip file. Make sure to extract into the /home/student/dev folder.
- Update the /home/student/.bashrc with content of the 'bashrc' file located in this folder here.
- Update **`YOUR_FIRST_NAME_HERE`** at line 60 of the .bashrc file to your actual first name.


Add the following toward the end of the `~/.bashrc` file

```bash
export HADOOP_HOME=/home/hadoop/hadoop-3.3.1
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"


export TOOLS_HOME=/home/student/tools
export APPS_HOME=/home/student/apps

export FLUME_HOME=$APPS_HOME/apache-flume-1.9.0-bin
export HBASE_HOME=$APPS_HOME/hbase-2.4.5
export HIVE_HOME=$APPS_HOME/apache-hive-3.1.2-bin
export HCAT_HOME=$HIVE_HOME/hcatalog
export KAFKA_HOME=$APPS_HOME/kafka_2.13-2.8.0
export PIG_HOME=$APPS_HOME/pig-0.17.0
export SPARK_HOME=$APPS_HOME/spark-3.1.2-bin-hadoop3.2
export SQOOP_HOME=$APPS_HOME/sqoop-1.4.7
export ZOOKEEPER_HOME=$APPS_HOME/apache-zookeeper-3.6.3-bin

export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
export PATH=$SPARK_HOME:$PATH

readlink -f /usr/bin/java | sed "s:bin/java::"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$HADOOP_HOME/bin

export PATH=$PATH:$FLUME_HOME/bin
export PATH=$PATH:$HBASE_HOME/bin
export PATH=$PATH:$HIVE_HOME/bin
export PATH=$PATH:$KAFKA_HOME/bin
export PATH=$PATH:$PIG_HOME/bin
export PATH=$PATH:$SPARK_HOME/bin
export PATH=$PATH:$SQOOP_HOME/bin
export PATH=$PATH:$ZOOKEEPER_HOME/bin

export PATH=$PATH:/home/student/.local/bin

```
