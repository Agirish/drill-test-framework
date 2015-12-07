#!/bin/sh

set -x

source ~/.drillTestConfig

workspace=$1
path=$2
script=$3

$HADOOP_HOME/bin/hadoop fs -test -d $path ;if [ `echo $?` -eq 0 ]; then $HADOOP_HOME/bin/hadoop fs -rm -r $path; $HADOOP_HOME/bin/hadoop fs -mkdir -p $path; else $HADOOP_HOME/bin/hadoop fs -mkdir -p $path; fi

${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=$workspace;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=$script

