SELECT (CASE WHEN (CASE WHEN true THEN true ELSE false END) THEN (CASE WHEN true THEN false ELSE true END) ELSE null END )FROM (VALUES(1)) test_tbl;