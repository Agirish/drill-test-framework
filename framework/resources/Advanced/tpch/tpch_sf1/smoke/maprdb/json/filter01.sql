SELECT C_CUSTKEY, C_NATIONKEY 
  FROM customer C 
  WHERE C_ACCTBAL BETWEEN 1000 AND 1200 
             AND C_NATIONKEY < 10 
             OR C_NATIONKEY IN (20, 30) 
             AND (C_CUSTKEY < 500 OR C_CUSTKEY > 1000) 
ORDER BY C_CUSTKEY, C_NATIONKEY;