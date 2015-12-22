#!/bin/sh

set -x

source ~/.drillTestConfig

workspace=$1
path=$2
script=$3

hadoop fs -test -d $path ;if [ `echo $?` -eq 0 ]; then hadoop fs -rm -r $path; hadoop fs -mkdir -p $path; else hadoop fs -mkdir -p $path; fi

sleep 10

${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=$workspace;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=$script

