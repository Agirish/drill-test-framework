#!/bin/sh

workspace=$1
path=$2

hadoop fs -test -d $path ;if [ `echo $?` -eq 0 ]; then hadoop fs -rmr $path; hadoop fs -mkdir $path; else hadoop fs -mkdir $path; fi

${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=$workspace;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=resources/Datasources/tpcds/createTablesJson.sql
resources/Datasources/tpcds/createViewsJson.sh
