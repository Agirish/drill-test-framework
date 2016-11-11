select i_item_sk, i_rec_start_date, i_rec_end_date from dfs.`/drill/testdata/parquet_date/auto_partition/item_multidate` where (dir0='1.9' or dir0='1.2') and i_rec_start_date = date '1997-10-27' and i_rec_end_date = date '2000-10-26' order by i_rec_start_date, i_item_sk limit 50;
