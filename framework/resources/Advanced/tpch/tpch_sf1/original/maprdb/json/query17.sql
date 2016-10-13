SELECT
  SUM(L.L_EXTENDEDPRICE) / 7.0 AS AVG_YEARLY
FROM
  lineitem L,
  part P
WHERE
  P.P_PARTKEY = L.L_PARTKEY
  AND P.P_BRAND = 'BRAND#13'
  AND P.P_CONTAINER = 'JUMBO CAN'
  AND L.L_QUANTITY < (
    SELECT
      0.2 * AVG(L2.L_QUANTITY)
    FROM
      lineitem L2
    WHERE
      L2.L_PARTKEY = P.P_PARTKEY
  );
