select * from `filter/pushdown/DRILL_5796_test_data.parquet` where int_col[1] < 0 order by id limit 5;
