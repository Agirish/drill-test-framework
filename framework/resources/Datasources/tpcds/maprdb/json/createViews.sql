use mfs.tpcds_sf1_maprdb_json_views;

CREATE OR REPLACE VIEW customer AS SELECT
CAST(C_CUSTOMER_SK AS INTEGER)  AS C_CUSTOMER_SK,
CAST(C_CUSTOMER_ID AS VARCHAR(200))  AS C_CUSTOMER_ID,
CAST(C_CURRENT_CDEMO_SK AS INTEGER)  AS C_CURRENT_CDEMO_SK,
CAST(C_CURRENT_HDEMO_SK AS INTEGER)  AS C_CURRENT_HDEMO_SK,
CAST(C_CURRENT_ADDR_SK AS INTEGER)  AS C_CURRENT_ADDR_SK,
CAST(C_FIRST_SHIPTO_DATE_SK AS INTEGER)  AS C_FIRST_SHIPTO_DATE_SK,
CAST(C_FIRST_SALES_DATE_SK AS INTEGER)  AS C_FIRST_SALES_DATE_SK,
CAST(C_SALUTATION AS VARCHAR(200))  AS C_SALUTATION,
CAST(C_FIRST_NAME AS VARCHAR(200))  AS C_FIRST_NAME,
CAST(C_LAST_NAME AS VARCHAR(200))  AS C_LAST_NAME,
CAST(C_PREFERRED_CUST_FLAG AS VARCHAR(200))  AS C_PREFERRED_CUST_FLAG,
CAST(C_BIRTH_DAY AS INTEGER)  AS C_BIRTH_DAY,
CAST(C_BIRTH_MONTH AS INTEGER)  AS C_BIRTH_MONTH,
CAST(C_BIRTH_YEAR AS INTEGER)  AS C_BIRTH_YEAR,
CAST(C_BIRTH_COUNTRY AS VARCHAR(200))  AS C_BIRTH_COUNTRY,
CAST(C_LOGIN AS VARCHAR(200))  AS C_LOGIN,
CAST(C_EMAIL_ADDRESS AS VARCHAR(200))  AS C_EMAIL_ADDRESS,
CAST(C_LAST_REVIEW_DATE AS VARCHAR(200))  AS C_LAST_REVIEW_DATE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/customer`;

CREATE OR REPLACE VIEW customer_address AS SELECT
CAST(CA_ADDRESS_SK AS INTEGER)   AS CA_ADDRESS_SK,
CAST(CA_ADDRESS_ID AS VARCHAR(200))  AS CA_ADDRESS_ID,
CAST(CA_STREET_NUMBER AS VARCHAR(200))  AS CA_STREET_NUMBER,
CAST(CA_STREET_NAME AS VARCHAR(200))  AS CA_STREET_NAME,
CAST(CA_STREET_TYPE AS VARCHAR(200))  AS CA_STREET_TYPE,
CAST(CA_SUITE_NUMBER AS VARCHAR(200))  AS CA_SUITE_NUMBER,
CAST(CA_CITY AS VARCHAR(200))  AS CA_CITY,
CAST(CA_COUNTY AS VARCHAR(200))  AS CA_COUNTY,
CAST(CA_STATE AS VARCHAR(200))  AS CA_STATE,
CAST(CA_ZIP AS VARCHAR(200))  AS CA_ZIP,
CAST(CA_COUNTRY AS VARCHAR(200))  AS CA_COUNTRY,
CAST(CA_GMT_OFFSET AS INTEGER)   AS CA_GMT_OFFSET,
CAST(CA_LOCATION_TYPE AS VARCHAR(200))  AS CA_LOCATION_TYPE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/customer_address`;

CREATE OR REPLACE VIEW customer_demographics AS SELECT
CAST( CD_DEMO_SK AS INTEGER)  AS CD_DEMO_SK,
CAST( CD_GENDER AS VARCHAR(200))  AS CD_GENDER,
CAST( CD_MARITAL_STATUS AS VARCHAR(200))  AS CD_MARITAL_STATUS,
CAST( CD_EDUCATION_STATUS AS VARCHAR(200))  AS CD_EDUCATION_STATUS,
CAST( CD_PURCHASE_ESTIMATE AS INTEGER)  AS CD_PURCHASE_ESTIMATE,
CAST( CD_CREDIT_RATING AS VARCHAR(200))  AS CD_CREDIT_RATING,
CAST( CD_DEP_COUNT AS INTEGER)  AS CD_DEP_COUNT,
CAST( CD_DEP_EMPLOYED_COUNT AS INTEGER)  AS CD_DEP_EMPLOYED_COUNT,
CAST( CD_DEP_COLLEGE_COUNT AS INTEGER)  AS CD_DEP_COLLEGE_COUNT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/customer_demographics`;

CREATE OR REPLACE VIEW household_demographics AS SELECT
CAST( HD_DEMO_SK AS INTEGER)  AS HD_DEMO_SK,
CAST( HD_INCOME_BAND_SK AS INTEGER)   AS HD_INCOME_BAND_SK,
CAST( HD_BUY_POTENTIAL AS VARCHAR(200))  AS HD_BUY_POTENTIAL,
CAST( HD_DEP_COUNT AS INTEGER)   AS HD_DEP_COUNT,
CAST( HD_VEHICLE_COUNT AS INTEGER)   AS HD_VEHICLE_COUNT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/household_demographics`;

CREATE OR REPLACE VIEW item AS SELECT
CAST( I_ITEM_SK AS INTEGER)  AS I_ITEM_SK,
CAST( I_ITEM_ID AS VARCHAR(200))   AS I_ITEM_ID,
CAST( I_REC_START_DATE AS DATE)  AS I_REC_START_DATE,
CAST( I_REC__DATE AS DATE)  AS I_REC__DATE,
CAST( I_ITEM_DESC AS VARCHAR(200))   AS I_ITEM_DESC,
CAST( I_CURRENT_PRICE AS DOUBLE)  AS I_CURRENT_PRICE,
CAST( I_WHOLESALE_COST AS DOUBLE)  AS I_WHOLESALE_COST,
CAST( I_BRAND_ID AS INTEGER)  AS I_BRAND_ID,
CAST( I_BRAND AS VARCHAR(200))   AS I_BRAND,
CAST( I_CLASS_ID AS INTEGER)  AS I_CLASS_ID,
CAST( I_CLASS AS VARCHAR(200))   AS I_CLASS,
CAST( I_CATEGORY_ID AS INTEGER)  AS I_CATEGORY_ID,
CAST( I_CATEGORY AS VARCHAR(200))   AS I_CATEGORY,
CAST( I_MANUFACT_ID AS INTEGER)  AS I_MANUFACT_ID,
CAST( I_MANUFACT AS VARCHAR(200))   AS I_MANUFACT,
CAST( I_SIZE AS VARCHAR(200))   AS I_SIZE,
CAST( I_FORMULATION AS VARCHAR(200))   AS I_FORMULATION,
CAST( I_COLOR AS VARCHAR(200))   AS I_COLOR,
CAST( I_UNITS AS VARCHAR(200))   AS I_UNITS,
CAST( I_CONTAINER AS VARCHAR(200))   AS I_CONTAINER,
CAST( I_MANAGER_ID AS INTEGER)  AS I_MANAGER_ID,
CAST( I_PRODUCT_NAME AS VARCHAR(200))   AS I_PRODUCT_NAME
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/item`;

CREATE OR REPLACE VIEW promotion AS SELECT
CAST( P_PROMO_SK AS INTEGER)  AS P_PROMO_SK,
CAST( P_PROMO_ID AS VARCHAR(200))  AS P_PROMO_ID,
CAST( P_START_DATE_SK AS INTEGER)  AS P_START_DATE_SK,
CAST( P__DATE_SK AS INTEGER)  AS P__DATE_SK,
CAST( P_ITEM_SK AS INTEGER)  AS P_ITEM_SK,
CAST( P_COST AS DOUBLE)  AS P_COST,
CAST( P_RESPONSE_TARGET AS INTEGER)  AS P_RESPONSE_TARGET,
CAST( P_PROMO_NAME AS VARCHAR(200))  AS P_PROMO_NAME,
CAST( P_CHANNEL_DMAIL AS VARCHAR(200))  AS P_CHANNEL_DMAIL,
CAST( P_CHANNEL_EMAIL AS VARCHAR(200))  AS P_CHANNEL_EMAIL,
CAST( P_CHANNEL_CATALOG AS VARCHAR(200))  AS P_CHANNEL_CATALOG,
CAST( P_CHANNEL_TV AS VARCHAR(200))  AS P_CHANNEL_TV,
CAST( P_CHANNEL_RADIO AS VARCHAR(200))  AS P_CHANNEL_RADIO,
CAST( P_CHANNEL_PRESS AS VARCHAR(200))  AS P_CHANNEL_PRESS,
CAST( P_CHANNEL_EVENT AS VARCHAR(200))  AS P_CHANNEL_EVENT,
CAST( P_CHANNEL_DEMO AS VARCHAR(200))  AS P_CHANNEL_DEMO,
CAST( P_CHANNEL_DETAILS AS VARCHAR(200))  AS P_CHANNEL_DETAILS,
CAST( P_PURPOSE AS VARCHAR(200))  AS P_PURPOSE,
CAST( P_DISCOUNT_ACTIVE AS VARCHAR(200))  AS P_DISCOUNT_ACTIVE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/promotion`;

CREATE OR REPLACE VIEW time_dim AS SELECT
CAST( T_TIME_SK AS INTEGER)  AS T_TIME_SK,
CAST( T_TIME_ID AS VARCHAR(200))  AS T_TIME_ID,
CAST( T_TIME AS INTEGER)  AS T_TIME,
CAST( T_HOUR AS INTEGER)  AS T_HOUR,
CAST( T_MINUTE AS INTEGER)  AS T_MINUTE,
CAST( T_SECOND AS INTEGER)  AS T_SECOND,
CAST( T_AM_PM AS VARCHAR(200))  AS T_AM_PM,
CAST( T_SHIFT AS VARCHAR(200))  AS T_SHIFT,
CAST( T_SUB_SHIFT AS VARCHAR(200))  AS T_SUB_SHIFT ,
CAST( T_MEAL_TIME AS VARCHAR(200))  AS T_MEAL_TIME
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/time_dim`;

CREATE OR REPLACE VIEW date_dim AS SELECT
CAST( D_DATE_SK AS INTEGER)  AS D_DATE_SK,
CAST( D_DATE_ID AS VARCHAR(200))  AS D_DATE_ID,
CAST( D_DATE AS DATE)  AS D_DATE,
CAST( D_MONTH_SEQ AS INTEGER)  AS D_MONTH_SEQ,
CAST( D_WEEK_SEQ AS INTEGER)  AS D_WEEK_SEQ,
CAST( D_QUARTER_SEQ AS INTEGER)  AS D_QUARTER_SEQ,
CAST( D_YEAR AS INTEGER)  AS D_YEAR,
CAST( D_DOW AS INTEGER)  AS D_DOW,
CAST( D_MOY AS INTEGER)  AS D_MOY,
CAST( D_DOM AS INTEGER)  AS D_DOM,
CAST( D_QOY AS INTEGER)  AS D_QOY,
CAST( D_FY_YEAR AS INTEGER)  AS D_FY_YEAR,
CAST( D_FY_QUARTER_SEQ AS INTEGER)  AS D_FY_QUARTER_SEQ,
CAST( S_FY_WEEK_SEQ AS INTEGER)  AS S_FY_WEEK_SEQ,
CAST( D_DAY_NAME AS VARCHAR(200))  AS D_DAY_NAME,
CAST( D_QUARTER_NAME AS VARCHAR(200))  AS D_QUARTER_NAME,
CAST( D_HOLIDAY AS VARCHAR(200))  AS D_HOLIDAY,
CAST( D_WEEK AS VARCHAR(200))  AS D_WEEK,
CAST( D_FOLLOWING_HOLIDAY AS VARCHAR(200))  AS D_FOLLOWING_HOLIDAY,
CAST( D_FIRST_DOM AS INTEGER)  AS D_FIRST_DOM,
CAST( D_LAST_DOM AS INTEGER)  AS D_LAST_DOM,
CAST( D_SAME_DAY_LY AS INTEGER)  AS D_SAME_DAY_LY,
CAST( D_SAME_DAY_LQ AS INTEGER)  AS D_SAME_DAY_LQ,
CAST( D_CURRENT_DAY AS VARCHAR(200))  AS D_CURRENT_DAY,
CAST( D_CURRENT_WEEK AS VARCHAR(200))  AS D_CURRENT_WEEK,
CAST( D_CURRENT_MONTH AS VARCHAR(200))  AS D_CURRENT_MONTH,
CAST( D_CURRENT_QUARTER AS VARCHAR(200))  AS D_CURRENT_QUARTER,
CAST( D_CURRENT_YEAR AS VARCHAR(200))  AS D_CURRENT_YEAR
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/date_dim`;

CREATE OR REPLACE VIEW store AS SELECT
CAST( S_STORE_SK AS INTEGER)  AS S_STORE_SK,
CAST( S_STORE_ID AS VARCHAR(200))  AS S_STORE_ID,
CAST( S_REC_START_DATE AS DATE)  AS S_REC_START_DATE,
CAST( S_REC__DATE AS DATE)  AS S_REC__DATE,
CAST( S_CLOSED_DATE_SK AS INTEGER)  AS S_CLOSED_DATE_SK,
CAST( S_STORE_NAME AS VARCHAR(200))  AS S_STORE_NAME,
CAST( S_NUMBER_EMPLOYEES AS INTEGER)  AS S_NUMBER_EMPLOYEES,
CAST( S_FLOOR_SPACE AS INTEGER)  AS S_FLOOR_SPACE,
CAST( S_HOURS AS VARCHAR(200))  AS S_HOURS,
CAST( S_MANAGER AS VARCHAR(200))  AS S_MANAGER,
CAST( S_MARKET_ID AS INTEGER)  AS S_MARKET_ID,
CAST( S_GEOGRAPHY_CLASS AS VARCHAR(200))  AS S_GEOGRAPHY_CLASS,
CAST( S_MARKET_DESC AS VARCHAR(200))  AS S_MARKET_DESC,
CAST( S_MARKET_MANAGER AS VARCHAR(200))  AS S_MARKET_MANAGER,
CAST( S_DIVISION_ID AS INTEGER)  AS S_DIVISION_ID,
CAST( S_DIVISION_NAME AS VARCHAR(200))  AS S_DIVISION_NAME,
CAST( S_COMPANY_ID AS INTEGER)  AS S_COMPANY_ID,
CAST( S_COMPANY_NAME AS VARCHAR(200))  AS S_COMPANY_NAME,
CAST( S_STREET_NUMBER AS VARCHAR(200))  AS S_STREET_NUMBER,
CAST( S_STREET_NAME AS VARCHAR(200))  AS S_STREET_NAME,
CAST( S_STREET_TYPE AS VARCHAR(200))  AS S_STREET_TYPE,
CAST( S_SUITE_NUMBER AS VARCHAR(200))  AS S_SUITE_NUMBER,
CAST( S_CITY AS VARCHAR(200))  AS S_CITY,
CAST( S_COUNTY AS VARCHAR(200))  AS S_COUNTY,
CAST( S_STATE AS VARCHAR(200))  AS S_STATE,
CAST( S_ZIP AS VARCHAR(200))  AS S_ZIP,
CAST( S_COUNTRY AS VARCHAR(200))  AS S_COUNTRY,
CAST( S_GMT_OFFSET AS DOUBLE)  AS S_GMT_OFFSET,
CAST( S_TAX_PRECENTAGE AS DOUBLE)  AS S_TAX_PRECENTAGE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/store`;

CREATE OR REPLACE VIEW store_sales AS SELECT
CAST( SS_SOLD_DATE_SK AS INTEGER)  AS SS_SOLD_DATE_SK,
CAST( SS_SOLD_TIME_SK AS INTEGER)  AS SS_SOLD_TIME_SK,
CAST( SS_ITEM_SK AS INTEGER)  AS SS_ITEM_SK,
CAST( SS_CUSTOMER_SK AS INTEGER)  AS SS_CUSTOMER_SK,
CAST( SS_CDEMO_SK AS INTEGER)  AS SS_CDEMO_SK,
CAST( SS_HDEMO_SK AS INTEGER)  AS SS_HDEMO_SK,
CAST( SS_ADDR_SK AS INTEGER)  AS SS_ADDR_SK,
CAST( SS_STORE_SK AS INTEGER)  AS SS_STORE_SK,
CAST( SS_PROMO_SK AS INTEGER)  AS SS_PROMO_SK,
CAST( SS_TICKET_NUMBER AS INTEGER)  AS SS_TICKET_NUMBER,
CAST( SS_QUANTITY AS INTEGER)  AS SS_QUANTITY,
CAST( SS_WHOLESALE_COST AS DOUBLE)  AS SS_WHOLESALE_COST,
CAST( SS_LIST_PRICE AS DOUBLE)  AS SS_LIST_PRICE,
CAST( SS_SALES_PRICE AS DOUBLE)  AS SS_SALES_PRICE,
CAST( SS_EXT_DISCOUNT_AMT AS DOUBLE)  AS SS_EXT_DISCOUNT_AMT,
CAST( SS_EXT_SALES_PRICE AS DOUBLE)  AS SS_EXT_SALES_PRICE,
CAST( SS_EXT_WHOLESALE_COST AS DOUBLE)  AS SS_EXT_WHOLESALE_COST,
CAST( SS_EXT_LIST_PRICE AS DOUBLE)  AS SS_EXT_LIST_PRICE,
CAST( SS_EXT_TAX AS DOUBLE)  AS SS_EXT_TAX,
CAST( SS_COUPON_AMT AS DOUBLE)  AS SS_COUPON_AMT,
CAST( SS_NET_PAID AS DOUBLE)  AS SS_NET_PAID,
CAST( SS_NET_PAID_INC_TAX AS DOUBLE)  AS SS_NET_PAID_INC_TAX,
CAST( SS_NET_PROFIT AS DOUBLE)  AS SS_NET_PROFIT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/store_sales`;

CREATE OR REPLACE VIEW warehouse AS SELECT
CAST( W_WAREHOUSE_SK AS INTEGER)  AS W_WAREHOUSE_SK,
CAST( W_WAREHOUSE_ID AS VARCHAR(200))  AS W_WAREHOUSE_ID,
CAST( W_WAREHOUSE_NAME AS VARCHAR(200))  AS W_WAREHOUSE_NAME,
CAST( W_WAREHOUSE_SQ_FT AS INTEGER)  AS W_WAREHOUSE_SQ_FT,
CAST( W_STREET_NUMBER AS VARCHAR(200))  AS W_STREET_NUMBER,
CAST( W_STREET_NAME AS VARCHAR(200))  AS W_STREET_NAME,
CAST( W_STREET_TYPE AS VARCHAR(200))  AS W_STREET_TYPE,
CAST( W_SUITE_NUMBER AS VARCHAR(200))  AS W_SUITE_NUMBER,
CAST( W_CITY AS VARCHAR(200))  AS W_CITY,
CAST( W_COUNTY AS VARCHAR(200))  AS W_COUNTY,
CAST( W_STATE AS VARCHAR(200))  AS W_STATE,
CAST( W_ZIP AS VARCHAR(200))  AS W_ZIP,
CAST( W_COUNTRY AS VARCHAR(200))  AS W_COUNTRY,
CAST( W_GMT_OFFSET AS DOUBLE)  AS W_GMT_OFFSET
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/warehouse`;

CREATE OR REPLACE VIEW ship_mode AS SELECT
CAST( SM_SHIP_MODE_SK AS INTEGER)  AS SM_SHIP_MODE_SK,
CAST( SM_SHIP_MODE_ID AS VARCHAR(200))  AS SM_SHIP_MODE_ID,
CAST( SM_TYPE AS VARCHAR(200))  AS SM_TYPE,
CAST( SM_CODE AS VARCHAR(200))  AS SM_CODE,
CAST( SM_CARRIER AS VARCHAR(200))  AS SM_CARRIER,
CAST( SM_CONTRACT AS VARCHAR(200))  AS SM_CONTRACT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/ship_mode`;

CREATE OR REPLACE VIEW reason AS SELECT
CAST( R_REASON_SK AS INTEGER)  AS R_REASON_SK,
CAST( R_REASON_ID AS VARCHAR(200))  AS R_REASON_ID,
CAST( R_REASON_DESC AS VARCHAR(200))  AS R_REASON_DESC
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/reason`;

CREATE OR REPLACE VIEW income_band AS SELECT
CAST( IB_INCOME_BAND_SK AS INTEGER)  AS IB_INCOME_BAND_SK,
CAST( IB_LOWER_BOUND AS INTEGER)  AS IB_LOWER_BOUND,
CAST( IB_UPPER_BOUND AS INTEGER)  AS IB_UPPER_BOUND
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/income_band`;

CREATE OR REPLACE VIEW call_center AS SELECT
CAST( CC_CALL_CENTER_SK AS INTEGER)  AS CC_CALL_CENTER_SK,
CAST( CC_CALL_CENTER_ID AS VARCHAR(200))  AS CC_CALL_CENTER_ID,
CAST( CC_REC_START_DATE AS DATE)  AS CC_REC_START_DATE,
CAST( CC_REC__DATE AS DATE)  AS CC_REC__DATE,
CAST( CC_CLOSED_DATE_SK AS INTEGER)  AS CC_CLOSED_DATE_SK,
CAST( CC_OPEN_DATE_SK AS INTEGER)  AS CC_OPEN_DATE_SK,
CAST( CC_NAME AS VARCHAR(200))  AS CC_NAME,
CAST( CC_CLASS AS VARCHAR(200))  AS CC_CLASS,
CAST( CC_EMPLOYEES AS INTEGER)  AS CC_EMPLOYEES,
CAST( CC_SQ_FT AS INTEGER)  AS CC_SQ_FT,
CAST( CC_HOURS AS VARCHAR(200))  AS CC_HOURS,
CAST( CC_MANAGER AS VARCHAR(200))  AS CC_MANAGER,
CAST( CC_MKT_ID AS INTEGER)  AS CC_MKT_ID,
CAST( CC_MKT_CLASS AS VARCHAR(200))  AS CC_MKT_CLASS,
CAST( CC_MKT_DESC AS VARCHAR(200))  AS CC_MKT_DESC,
CAST( CC_MARKET_MANAGER AS VARCHAR(200))  AS CC_MARKET_MANAGER,
CAST( CC_DIVISION AS INTEGER)  AS CC_DIVISION,
CAST( CC_DIVISION_NAME AS VARCHAR(200))  AS CC_DIVISION_NAME,
CAST( CC_COMPANY AS INTEGER)  AS CC_COMPANY,
CAST( CC_COMPANY_NAME AS VARCHAR(200))  AS CC_COMPANY_NAME,
CAST( CC_STREET_NUMBER AS VARCHAR(200))  AS CC_STREET_NUMBER,
CAST( CC_STREET_NAME AS VARCHAR(200))  AS CC_STREET_NAME,
CAST( CC_STREET_TYPE AS VARCHAR(200))  AS CC_STREET_TYPE,
CAST( CC_SUITE_NUMBER AS VARCHAR(200))  AS CC_SUITE_NUMBER,
CAST( CC_CITY AS VARCHAR(200))  AS CC_CITY,
CAST( CC_COUNTY AS VARCHAR(200))  AS CC_COUNTY,
CAST( CC_STATE AS VARCHAR(200))  AS CC_STATE,
CAST( CC_ZIP AS VARCHAR(200))  AS CC_ZIP,
CAST( CC_COUNTRY AS VARCHAR(200))  AS CC_COUNTRY,
CAST( CC_GMT_OFFSET AS DOUBLE)  AS CC_GMT_OFFSET,
CAST( CC_TAX_PERCENTAGE AS DOUBLE)  AS CC_TAX_PERCENTAGE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/call_center`;

CREATE OR REPLACE VIEW web_site AS SELECT
CAST( WEB_SITE_SK AS INTEGER)  AS WEB_SITE_SK,
CAST( WEB_SITE_ID AS VARCHAR(200))  AS WEB_SITE_ID,
CAST( WEB_REC_START_DATE AS DATE)  AS WEB_REC_START_DATE,
CAST( WEB_REC__DATE AS DATE)  AS WEB_REC__DATE,
CAST( WEB_NAME AS VARCHAR(200))  AS WEB_NAME,
CAST( WEB_OPEN_DATE_SK AS INTEGER)  AS WEB_OPEN_DATE_SK,
CAST( WEB_CLOSE_DATE_SK AS INTEGER)  AS WEB_CLOSE_DATE_SK,
CAST( WEB_CLASS AS VARCHAR(200))  AS WEB_CLASS,
CAST( WEB_MANAGER AS VARCHAR(200))  AS WEB_MANAGER,
CAST( WEB_MKT_ID AS INTEGER)  AS WEB_MKT_ID,
CAST( WEB_MKT_CLASS AS VARCHAR(200))  AS WEB_MKT_CLASS,
CAST( WEB_MKT_DESC AS VARCHAR(200))  AS WEB_MKT_DESC,
CAST( WEB_MARKET_MANAGER AS VARCHAR(200))  AS WEB_MARKET_MANAGER,
CAST( WEB_COMPANY_ID AS INTEGER)  AS WEB_COMPANY_ID,
CAST( WEB_COMPANY_NAME AS VARCHAR(200))  AS WEB_COMPANY_NAME,
CAST( WEB_STREET_NUMBER AS VARCHAR(200))  AS WEB_STREET_NUMBER,
CAST( WEB_STREET_NAME AS VARCHAR(200))  AS WEB_STREET_NAME,
CAST( WEB_STREET_TYPE AS VARCHAR(200))  AS WEB_STREET_TYPE,
CAST( WEB_SUITE_NUMBER AS VARCHAR(200))  AS WEB_SUITE_NUMBER,
CAST( WEB_CITY AS VARCHAR(200))  AS WEB_CITY,
CAST( WEB_COUNTY AS VARCHAR(200))  AS WEB_COUNTY,
CAST( WEB_STATE AS VARCHAR(200))  AS WEB_STATE,
CAST( WEB_ZIP AS VARCHAR(200))  AS WEB_ZIP,
CAST( WEB_COUNTRY AS VARCHAR(200))  AS WEB_COUNTRY,
CAST( WEB_GMT_OFFSET AS DOUBLE)  AS WEB_GMT_OFFSET,
CAST( WEB_TAX_PERCENTAGE AS DOUBLE)  AS WEB_TAX_PERCENTAGE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/web_site`;

CREATE OR REPLACE VIEW store_returns AS SELECT
CAST( SR_RETURNED_DATE_SK AS INTEGER)  AS SR_RETURNED_DATE_SK,
CAST( SR_RETURN_TIME_SK AS INTEGER)  AS SR_RETURN_TIME_SK,
CAST( SR_ITEM_SK AS INTEGER)  AS SR_ITEM_SK,
CAST( SR_CUSTOMER_SK AS INTEGER)  AS SR_CUSTOMER_SK,
CAST( SR_CDEMO_SK AS INTEGER)  AS SR_CDEMO_SK,
CAST( SR_HDEMO_SK AS INTEGER)  AS SR_HDEMO_SK,
CAST( SR_ADDR_SK AS INTEGER)  AS SR_ADDR_SK,
CAST( SR_STORE_SK AS INTEGER)  AS SR_STORE_SK,
CAST( SR_REASON_SK AS INTEGER)  AS SR_REASON_SK,
CAST( SR_TICKET_NUMBER AS INTEGER)  AS SR_TICKET_NUMBER,
CAST( SR_RETURN_QUANTITY AS INTEGER)  AS SR_RETURN_QUANTITY,
CAST( SR_RETURN_AMT AS DOUBLE)  AS SR_RETURN_AMT,
CAST( SR_RETURN_TAX AS DOUBLE)  AS SR_RETURN_TAX,
CAST( SR_RETURN_AMT_INC_TAX AS DOUBLE)  AS SR_RETURN_AMT_INC_TAX,
CAST( SR_FEE AS DOUBLE)  AS SR_FEE,
CAST( SR_RETURN_SHIP_COST AS DOUBLE)  AS SR_RETURN_SHIP_COST,
CAST( SR_REFUNDED_CASH AS DOUBLE)  AS SR_REFUNDED_CASH,
CAST( SR_REVERSED_CHARGE AS DOUBLE)  AS SR_REVERSED_CHARGE,
CAST( SR_STORE_CREDIT AS DOUBLE)  AS SR_STORE_CREDIT,
CAST( SR_NET_LOSS AS DOUBLE)  AS SR_NET_LOSS
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/store_returns`;

CREATE OR REPLACE VIEW web_page AS SELECT
CAST( WP_WEB_PAGE_SK AS INTEGER)  AS WP_WEB_PAGE_SK,
CAST( WP_WEB_PAGE_ID AS VARCHAR(200))  AS WP_WEB_PAGE_ID,
CAST( WP_REC_START_DATE AS DATE)  AS WP_REC_START_DATE,
CAST( WP_REC__DATE AS DATE)  AS WP_REC__DATE,
CAST( WP_CREATION_DATE_SK AS INTEGER)  AS WP_CREATION_DATE_SK,
CAST( WP_ACCESS_DATE_SK AS INTEGER)  AS WP_ACCESS_DATE_SK,
CAST( WP_AUTOGEN_FLAG AS VARCHAR(200))  AS WP_AUTOGEN_FLAG,
CAST( WP_CUSTOMER_SK AS INTEGER)  AS WP_CUSTOMER_SK,
CAST( WP_URL AS VARCHAR(200))  AS WP_URL,
CAST( WP_TYPE AS VARCHAR(200))  AS WP_TYPE,
CAST( WP_CHAR_COUNT AS INTEGER)  AS WP_CHAR_COUNT,
CAST( WP_LINK_COUNT AS INTEGER)  AS WP_LINK_COUNT,
CAST( WP_IMAGE_COUNT AS INTEGER)  AS WP_IMAGE_COUNT,
CAST( WP_MAX_AD_COUNT AS INTEGER)  AS WP_MAX_AD_COUNT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/web_page`;

CREATE OR REPLACE VIEW catalog_page AS SELECT
CAST( CP_CATALOG_PAGE_SK AS INTEGER)  AS CP_CATALOG_PAGE_SK,
CAST( CP_CATALOG_PAGE_ID AS VARCHAR(200))  AS CP_CATALOG_PAGE_ID,
CAST( CP_START_DATE_SK AS INTEGER)  AS CP_START_DATE_SK,
CAST( CP__DATE_SK AS INTEGER)  AS CP__DATE_SK,
CAST( CP_DEPARTMENT AS VARCHAR(200))  AS CP_DEPARTMENT,
CAST( CP_CATALOG_NUMBER AS INTEGER)  AS CP_CATALOG_NUMBER,
CAST( CP_CATALOG_PAGE_NUMBER AS INTEGER)  AS CP_CATALOG_PAGE_NUMBER,
CAST( CP_DESCRIPTION AS VARCHAR(200))  AS CP_DESCRIPTION,
CAST( CP_TYPE AS VARCHAR(200))  AS CP_TYPE
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/catalog_page`;

CREATE OR REPLACE VIEW inventory AS SELECT
CAST( INV_DATE_SK AS INTEGER)  AS INV_DATE_SK,
CAST( INV_ITEM_SK AS INTEGER)  AS INV_ITEM_SK,
CAST( INV_WAREHOUSE_SK AS INTEGER)  AS INV_WAREHOUSE_SK,
CAST( INV_QUANTITY_ON_HAND AS INTEGER)  AS INV_QUANTITY_ON_HAND
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/inventory`;

CREATE OR REPLACE VIEW catalog_returns AS SELECT
CAST( CR_RETURNED_DATE_SK AS INTEGER)  AS CR_RETURNED_DATE_SK,
CAST( CR_RETURNED_TIME_SK AS INTEGER)  AS CR_RETURNED_TIME_SK,
CAST( CR_ITEM_SK AS INTEGER)  AS CR_ITEM_SK,
CAST( CR_REFUNDED_CUSTOMER_SK AS INTEGER)  AS CR_REFUNDED_CUSTOMER_SK,
CAST( CR_REFUNDED_CDEMO_SK AS INTEGER)  AS CR_REFUNDED_CDEMO_SK,
CAST( CR_REFUNDED_HDEMO_SK AS INTEGER)  AS CR_REFUNDED_HDEMO_SK,
CAST( CR_REFUNDED_ADDR_SK AS INTEGER)  AS CR_REFUNDED_ADDR_SK,
CAST( CR_RETURNING_CUSTOMER_SK AS INTEGER)  AS CR_RETURNING_CUSTOMER_SK,
CAST( CR_RETURNING_CDEMO_SK AS INTEGER)  AS CR_RETURNING_CDEMO_SK,
CAST( CR_RETURNING_HDEMO_SK AS INTEGER)  AS CR_RETURNING_HDEMO_SK,
CAST( CR_RETURNING_ADDR_SK AS INTEGER)  AS CR_RETURNING_ADDR_SK,
CAST( CR_CALL_CENTER_SK AS INTEGER)  AS CR_CALL_CENTER_SK,
CAST( CR_CATALOG_PAGE_SK AS INTEGER)  AS CR_CATALOG_PAGE_SK,
CAST( CR_SHIP_MODE_SK AS INTEGER)  AS CR_SHIP_MODE_SK,
CAST( CR_WAREHOUSE_SK AS INTEGER)  AS CR_WAREHOUSE_SK,
CAST( CR_REASON_SK AS INTEGER)  AS CR_REASON_SK,
CAST( CR_ORDER_NUMBER AS INTEGER)  AS CR_ORDER_NUMBER,
CAST( CR_RETURN_QUANTITY AS INTEGER)  AS CR_RETURN_QUANTITY,
CAST( CR_RETURN_AMOUNT AS DOUBLE)  AS CR_RETURN_AMOUNT,
CAST( CR_RETURN_TAX AS DOUBLE)  AS CR_RETURN_TAX,
CAST( CR_RETURN_AMT_INC_TAX AS DOUBLE)  AS CR_RETURN_AMT_INC_TAX,
CAST( CR_FEE AS DOUBLE)  AS CR_FEE,
CAST( CR_RETURN_SHIP_COST AS DOUBLE)  AS CR_RETURN_SHIP_COST,
CAST( CR_REFUNDED_CASH AS DOUBLE)  AS CR_REFUNDED_CASH,
CAST( CR_REVERSED_CHARGE AS DOUBLE)  AS CR_REVERSED_CHARGE,
CAST( CR_STORE_CREDIT AS DOUBLE)  AS CR_STORE_CREDIT,
CAST( CR_NET_LOSS AS DOUBLE)  AS CR_NET_LOSS
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/catalog_returns`;

CREATE OR REPLACE VIEW web_returns AS SELECT
CAST( WR_RETURNED_DATE_SK AS INTEGER)  AS WR_RETURNED_DATE_SK,
CAST( WR_RETURNED_TIME_SK AS INTEGER)  AS WR_RETURNED_TIME_SK,
CAST( WR_ITEM_SK AS INTEGER)  AS WR_ITEM_SK,
CAST( WR_REFUNDED_CUSTOMER_SK AS INTEGER)  AS WR_REFUNDED_CUSTOMER_SK,
CAST( WR_REFUNDED_CDEMO_SK AS INTEGER)  AS WR_REFUNDED_CDEMO_SK,
CAST( WR_REFUNDED_HDEMO_SK AS INTEGER)  AS WR_REFUNDED_HDEMO_SK,
CAST( WR_REFUNDED_ADDR_SK AS INTEGER)  AS WR_REFUNDED_ADDR_SK,
CAST( WR_RETURNING_CUSTOMER_SK AS INTEGER)  AS WR_RETURNING_CUSTOMER_SK,
CAST( WR_RETURNING_CDEMO_SK AS INTEGER)  AS WR_RETURNING_CDEMO_SK,
CAST( WR_RETURNING_HDEMO_SK AS INTEGER)  AS WR_RETURNING_HDEMO_SK,
CAST( WR_RETURNING_ADDR_SK AS INTEGER)  AS WR_RETURNING_ADDR_SK,
CAST( WR_WEB_PAGE_SK AS INTEGER)  AS WR_WEB_PAGE_SK,
CAST( WR_REASON_SK AS INTEGER)  AS WR_REASON_SK,
CAST( WR_ORDER_NUMBER AS INTEGER)  AS WR_ORDER_NUMBER,
CAST( WR_RETURN_QUANTITY AS INTEGER)  AS WR_RETURN_QUANTITY,
CAST( WR_RETURN_AMT AS DOUBLE)  AS WR_RETURN_AMT,
CAST( WR_RETURN_TAX AS DOUBLE)  AS WR_RETURN_TAX,
CAST( WR_RETURN_AMT_INC_TAX AS DOUBLE)  AS WR_RETURN_AMT_INC_TAX,
CAST( WR_FEE AS DOUBLE)  AS WR_FEE,
CAST( WR_RETURN_SHIP_COST AS DOUBLE)  AS WR_RETURN_SHIP_COST,
CAST( WR_REFUNDED_CASH AS DOUBLE)  AS WR_REFUNDED_CASH,
CAST( WR_REVERSED_CHARGE AS DOUBLE)  AS WR_REVERSED_CHARGE,
CAST( WR_ACCOUNT_CREDIT AS DOUBLE)  AS WR_ACCOUNT_CREDIT,
CAST( WR_NET_LOSS AS DOUBLE)  AS WR_NET_LOSS
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/web_returns`;

CREATE OR REPLACE VIEW web_sales AS SELECT
CAST( WS_SOLD_DATE_SK AS INTEGER)  AS WS_SOLD_DATE_SK,
CAST( WS_SOLD_TIME_SK AS INTEGER)  AS WS_SOLD_TIME_SK,
CAST( WS_SHIP_DATE_SK AS INTEGER)  AS WS_SHIP_DATE_SK,
CAST( WS_ITEM_SK AS INTEGER)  AS WS_ITEM_SK,
CAST( WS_BILL_CUSTOMER_SK AS INTEGER)  AS WS_BILL_CUSTOMER_SK,
CAST( WS_BILL_CDEMO_SK AS INTEGER)  AS WS_BILL_CDEMO_SK,
CAST( WS_BILL_HDEMO_SK AS INTEGER)  AS WS_BILL_HDEMO_SK,
CAST( WS_BILL_ADDR_SK AS INTEGER)  AS WS_BILL_ADDR_SK,
CAST( WS_SHIP_CUSTOMER_SK AS INTEGER)  AS WS_SHIP_CUSTOMER_SK,
CAST( WS_SHIP_CDEMO_SK AS INTEGER)  AS WS_SHIP_CDEMO_SK,
CAST( WS_SHIP_HDEMO_SK AS INTEGER)  AS WS_SHIP_HDEMO_SK,
CAST( WS_SHIP_ADDR_SK AS INTEGER)  AS WS_SHIP_ADDR_SK,
CAST( WS_WEB_PAGE_SK AS INTEGER)  AS WS_WEB_PAGE_SK,
CAST( WS_WEB_SITE_SK AS INTEGER)  AS WS_WEB_SITE_SK,
CAST( WS_SHIP_MODE_SK AS INTEGER)  AS WS_SHIP_MODE_SK,
CAST( WS_WAREHOUSE_SK AS INTEGER)  AS WS_WAREHOUSE_SK,
CAST( WS_PROMO_SK AS INTEGER)  AS WS_PROMO_SK,
CAST( WS_ORDER_NUMBER AS INTEGER)  AS WS_ORDER_NUMBER,
CAST( WS_QUANTITY AS INTEGER)  AS WS_QUANTITY,
CAST( WS_WHOLESALE_COST AS DOUBLE)  AS WS_WHOLESALE_COST,
CAST( WS_LIST_PRICE AS DOUBLE)  AS WS_LIST_PRICE,
CAST( WS_SALES_PRICE AS DOUBLE)  AS WS_SALES_PRICE,
CAST( WS_EXT_DISCOUNT_AMT AS DOUBLE)  AS WS_EXT_DISCOUNT_AMT,
CAST( WS_EXT_SALES_PRICE AS DOUBLE)  AS WS_EXT_SALES_PRICE,
CAST( WS_EXT_WHOLESALE_COST AS DOUBLE)  AS WS_EXT_WHOLESALE_COST,
CAST( WS_EXT_LIST_PRICE AS DOUBLE)  AS WS_EXT_LIST_PRICE,
CAST( WS_EXT_TAX AS DOUBLE)  AS WS_EXT_TAX,
CAST( WS_COUPON_AMT AS DOUBLE)  AS WS_COUPON_AMT,
CAST( WS_EXT_SHIP_COST AS DOUBLE)  AS WS_EXT_SHIP_COST,
CAST( WS_NET_PAID AS DOUBLE)  AS WS_NET_PAID,
CAST( WS_NET_PAID_INC_TAX AS DOUBLE)  AS WS_NET_PAID_INC_TAX,
CAST( WS_NET_PAID_INC_SHIP AS DOUBLE)  AS WS_NET_PAID_INC_SHIP,
CAST( WS_NET_PAID_INC_SHIP_TAX AS DOUBLE)  AS WS_NET_PAID_INC_SHIP_TAX,
CAST( WS_NET_PROFIT AS DOUBLE)  AS WS_NET_PROFIT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/web_sales`;

CREATE OR REPLACE VIEW catalog_sales AS SELECT
CAST( CS_SOLD_DATE_SK AS INTEGER)  AS CS_SOLD_DATE_SK,
CAST( CS_SOLD_TIME_SK AS INTEGER)  AS CS_SOLD_TIME_SK,
CAST( CS_SHIP_DATE_SK AS INTEGER)  AS CS_SHIP_DATE_SK,
CAST( CS_BILL_CUSTOMER_SK AS INTEGER)  AS CS_BILL_CUSTOMER_SK,
CAST( CS_BILL_CDEMO_SK AS INTEGER)  AS CS_BILL_CDEMO_SK,
CAST( CS_BILL_HDEMO_SK AS INTEGER)  AS CS_BILL_HDEMO_SK,
CAST( CS_BILL_ADDR_SK AS INTEGER)  AS CS_BILL_ADDR_SK,
CAST( CS_SHIP_CUSTOMER_SK AS INTEGER)  AS CS_SHIP_CUSTOMER_SK,
CAST( CS_SHIP_CDEMO_SK AS INTEGER)  AS CS_SHIP_CDEMO_SK,
CAST( CS_SHIP_HDEMO_SK AS INTEGER)  AS CS_SHIP_HDEMO_SK,
CAST( CS_SHIP_ADDR_SK AS INTEGER)  AS CS_SHIP_ADDR_SK,
CAST( CS_CALL_CENTER_SK AS INTEGER)  AS CS_CALL_CENTER_SK,
CAST( CS_CATALOG_PAGE_SK AS INTEGER)  AS CS_CATALOG_PAGE_SK,
CAST( CS_SHIP_MODE_SK AS INTEGER)  AS CS_SHIP_MODE_SK,
CAST( CS_WAREHOUSE_SK AS INTEGER)  AS CS_WAREHOUSE_SK,
CAST( CS_ITEM_SK AS INTEGER)  AS CS_ITEM_SK,
CAST( CS_PROMO_SK AS INTEGER)  AS CS_PROMO_SK,
CAST( CS_ORDER_NUMBER AS INTEGER)  AS CS_ORDER_NUMBER,
CAST( CS_QUANTITY AS INTEGER)  AS CS_QUANTITY,
CAST( CS_WHOLESALE_COST AS DOUBLE)  AS CS_WHOLESALE_COST,
CAST( CS_LIST_PRICE AS DOUBLE)  AS CS_LIST_PRICE,
CAST( CS_SALES_PRICE AS DOUBLE)  AS CS_SALES_PRICE,
CAST( CS_EXT_DISCOUNT_AMT AS DOUBLE)  AS CS_EXT_DISCOUNT_AMT,
CAST( CS_EXT_SALES_PRICE AS DOUBLE)  AS CS_EXT_SALES_PRICE,
CAST( CS_EXT_WHOLESALE_COST AS DOUBLE)  AS CS_EXT_WHOLESALE_COST,
CAST( CS_EXT_LIST_PRICE AS DOUBLE)  AS CS_EXT_LIST_PRICE,
CAST( CS_EXT_TAX AS DOUBLE)  AS CS_EXT_TAX,
CAST( CS_COUPON_AMT AS DOUBLE)  AS CS_COUPON_AMT,
CAST( CS_EXT_SHIP_COST AS DOUBLE)  AS CS_EXT_SHIP_COST,
CAST( CS_NET_PAID AS DOUBLE)  AS CS_NET_PAID,
CAST( CS_NET_PAID_INC_TAX AS DOUBLE)  AS CS_NET_PAID_INC_TAX,
CAST( CS_NET_PAID_INC_SHIP AS DOUBLE)  AS CS_NET_PAID_INC_SHIP,
CAST( CS_NET_PAID_INC_SHIP_TAX AS DOUBLE)  AS CS_NET_PAID_INC_SHIP_TAX,
CAST( CS_NET_PROFIT AS DOUBLE)  AS CS_NET_PROFIT
FROM mfs.`/drill/testdata/tpcds_sf1/maprdb/json/catalog_sales`;

