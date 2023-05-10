--> Query : Create sub partitions of already partitioned table


-- Step 1  : Detach partition from main table and create it with sub partitions

alter table payment_master detach partition payment_p2019;
drop table payment_p2019

-- the ALTER command will keep the partition table as a regular table after removing it from the partitions of the table, 
-- but DROP will remove it from the database.


-- Step 2 : Create table with sub partitions :
CREATE TABLE payment_p2019_sal 
PARTITION OF payment_master
FOR VALUES FROM ('2019-01-01') TO ('2020-01-01')
PARTITION BY RANGE (emp_salary); 


-- Step 3 : Create individual Sub-Partition tables 

CREATE TABLE payment_sal2019_600 
PARTITION OF payment_p2019_sal
FOR VALUES FROM (100.00) TO (601.00)

CREATE TABLE payment_sal2019_800 
PARTITION OF payment_p2019_sal
FOR VALUES FROM (601.00) TO (801.00)

CREATE TABLE payment_sal2019_default 
PARTITION OF payment_p2019_sal
DEFAULT  --> accepts all salary value except above range


--  Step 4 : Inserting values Into Partitioned Tables

insert into payment_master
select * from payment where payment_date between '2019-01-01' and '2020-01-01';
--> This will automatically arrange values according to salary sub-partitions


-- Step 5 : View Each of your sub-partitions

select * from payment_sal2019_600
select * from payment_sal2019_800
select * from payment_sal2019_default


