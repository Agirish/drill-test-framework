select * from `filter/pushdown/DRILL_5796_test_data.parquet` t where t.nested_group.int_col[2] < 0 order by id limit 5;