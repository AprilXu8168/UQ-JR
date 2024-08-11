CREATE TABLE sales_horizontal
(
    salesid integer NOT NULL DEFAULT nextval('sales_salesid_seq'::regclass),
    salespersonid integer NOT NULL,
    customerid integer NOT NULL,
    productid integer NOT NULL,
    quantity integer NOT NULL
) partition by range (salesid);

Create table sales_h1 Partition of sales_horizontal for values from (0) to (700000);
Create table sales_h2 Partition of sales_horizontal for values from (700000) to (1400000);
Create table sales_h3 Partition of sales_horizontal for values from (1400000) to (2100000);
Create table sales_h4 Partition of sales_horizontal for values from (2100000) to (2800000);
Create table sales_h5 Partition of sales_horizontal for values from (2800000) to (3500000);
Create table sales_h6 Partition of sales_horizontal for values from (3500000) to (4200000);
Create table sales_h7 Partition of sales_horizontal for values from (4200000) to (4900000);
Create table sales_h8 Partition of sales_horizontal for values from (4900000) to (5600000);
Create table sales_h9 Partition of sales_horizontal for values from (5600000) to (6300000);
Create table sales_h10 Partition of sales_horizontal for values from (6300000) to (7000000);

TRUNCATE TABLE sales_horizontal;
INSERT INTO sales_horizontal
SELECT *
FROM sales;