SELECT
  SUPP_NATION,
  CUST_NATION,
  L_YEAR,
  SUM(VOLUME) AS REVENUE
FROM
  (
    SELECT
      N1.N_NAME AS SUPP_NATION,
      N2.N_NAME AS CUST_NATION,
      EXTRACT(YEAR FROM L.L_SHIPDate) AS L_YEAR,
      L.L_EXTENDEDPRICE * (1 - L.L_DISCOUNT) AS VOLUME
    FROM
      supplier S,
      lineitem L,
      orders O,
      customer C,
      nation N1,
      nation N2
    WHERE
      S.S_SUPPKEY = L.L_SUPPKEY
      AND O.O_ORDERKEY = L.L_ORDERKEY
      AND C.C_CUSTKEY = O.O_CUSTKEY
      AND S.S_NATIONKEY = N1.N_NATIONKEY
      AND C.C_NATIONKEY = N2.N_NATIONKEY
      AND (
        (N1.N_NAME = 'EGYPT' AND N2.N_NAME = 'UNITED STATES')
        OR (N1.N_NAME = 'UNITED STATES' AND N2.N_NAME = 'EGYPT')
      )
      AND L.L_SHIPDate BETWEEN DATE '1995-01-01' AND DATE '1996-12-31'
  ) AS SHIPPING
GROUP BY
  SUPP_NATION,
  CUST_NATION,
  L_YEAR
ORDER BY
  SUPP_NATION,
  CUST_NATION,
  L_YEAR;
