-- Query : List Partioning 

-- Step 1 : Create Main Table
CREATE TABLE  sales_region (id INT,amount DECIMAL(6,2),region VARCHAR(50));

-- Step 2 : Insert Few rows into this table

insert into sales_region (id, amount, region) values (1, 988.49, 'Canada');
insert into sales_region (id, amount, region) values (2, 798.49, 'Afghanistan');
insert into sales_region (id, amount, region) values (3, 175.99, 'Brazil');
insert into sales_region (id, amount, region) values (4, 594.11, 'Afghanistan');
insert into sales_region (id, amount, region) values (5, 639.23, 'Brazil');
insert into sales_region (id, amount, region) values (6, 605.32, 'Canada');
insert into sales_region (id, amount, region) values (7, 680.01, 'Brazil');
insert into sales_region (id, amount, region) values (8, 644.22, 'Canada');
insert into sales_region (id, amount, region) values (9, 428.14, 'Brazil');
insert into sales_region (id, amount, region) values (10, 533.65, 'Afghanistan');

-- Step 3 :Create Partition Of Your Main/Orginal Table

CREATE TABLE sales_region_p (id INT,amount DECIMAL(6,2),region VARCHAR(50))
PARTITION BY LIST (region)

-- Step 4 : Create Individual Partitions 

CREATE TABLE Canada PARTITION OF sales_region_p FOR VALUES IN ('Canada');
CREATE TABLE Afghanistan PARTITION OF sales_region_p FOR VALUES IN ('Afghanistan');
CREATE TABLE Brazil PARTITION OF sales_region_p FOR VALUES IN ('Brazil');

-- Step 5 : Insert Data into your partitioned table

INSERT INTO sales_region_p
SELECT * FROM sales_region

-- Step 6 : View Your Data

SELECT * FROM sales_region_p
SELECT * FROM Canada
SELECT * FROM Afghanistan
SELECT * FROM Brazil

