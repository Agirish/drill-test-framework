select * from `filter/pushdown/DRILL_5796_test_data.parquet` where date_col < '2017-01-01' order by id limit 5;
