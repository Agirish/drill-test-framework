refresh table metadata dfs.`/drill/testdata/mc_parquet_date/spark_generated/d4`;
select a,b,c from dfs.`/drill/testdata/mc_parquet_date/spark_generated/d4` where c > date '2016-10-1' and c is not null;
select 1 from sys.version;
