-- Query : Range Partitioning 

-- Step 1: Create Original Table (No Partition) whose partition you need
create table payment (
	emp_id INT,
	emp_name VARCHAR(50),
	emp_salary numeric(10,2),
	payment_date DATE)

-- Step 2 : Insert Values Into your Original Table
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (1, 'Ofilia', '291.56', '2020-12-26');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (2, 'Pearce', '606.47', '2019-03-20');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (3, 'Mitchael', '656.67', '2022-09-12');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (4, 'Eldon', '150.81', '2020-06-27');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (5, 'Vitoria', '552.19', '2020-09-27');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (6, 'Ajay', '326.13', '2021-04-06');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (7, 'Noll', '863.25', '2019-04-06');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (8, 'Zachariah', '719.95', '2019-02-23');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (9, 'Robbin', '635.97', '2021-04-09');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (10, 'Udale', '529.30', '2022-02-08');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (11, 'Marcos', '548.65', '2022-09-28');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (12, 'Ingaborg', '235.94', '2019-03-10');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (13, 'Tamar', '788.98', '2019-09-26');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (14, 'Melodee', '241.69', '2022-05-29');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (15, 'Nellie', '985.14', '2019-02-18');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (16, 'Ignatius', '636.27', '2022-04-06');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (17, 'Madison', '161.11', '2022-09-26');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (18, 'Abagail', '411.47', '2020-09-19');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (19, 'Cecil', '862.53', '2019-08-04');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (20, 'Guss', '192.02', '2019-11-13');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (21, 'Sully', '962.05', '2020-01-08');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (22, 'Rachael', '483.19', '2022-08-10');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (23, 'Sebastien', '371.72', '2019-04-21');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (24, 'Moria', '918.00', '2021-05-04');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (25, 'Jemmie', '815.57', '2020-11-01');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (26, 'Moss', '928.54', '2019-01-14');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (27, 'Gordie', '682.79', '2022-05-25');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (28, 'Christoph', '876.37', '2019-09-17');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (29, 'Alica', '203.75', '2019-10-20');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (30, 'Tedda', '453.73', '2019-10-21');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (31, 'Port', '228.86', '2019-05-12');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (32, 'Lucian', '644.87', '2021-11-15');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (33, 'Bridgette', '567.37', '2020-11-18');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (34, 'Terrijo', '110.15', '2021-08-21');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (35, 'Shanan', '297.22', '2019-12-14');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (36, 'Leif', '610.33', '2019-10-09');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (37, 'Roselle', '445.76', '2020-08-12');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (38, 'Caroline', '400.03', '2020-06-04');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (39, 'Dunstan', '184.74', '2022-12-06');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (40, 'Happy', '241.85', '2021-07-27');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (41, 'Eddi', '704.75', '2021-06-09');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (42, 'Celestyna', '186.93', '2021-04-07');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (43, 'Ailbert', '763.05', '2020-06-17');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (44, 'Riannon', '963.11', '2022-04-12');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (45, 'Abagail', '660.58', '2021-05-15');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (46, 'Linea', '131.56', '2019-11-19');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (47, 'Gretel', '314.18', '2022-06-04');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (48, 'Adriena', '399.31', '2021-04-03');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (49, 'Elvira', '711.46', '2022-01-16');
insert into payment (emp_id, emp_name, emp_salary, payment_date) values (50, 'Verina', '609.65', '2020-10-24');

-- Step 3 : Create Partitioned Table Of Your Original Table
create table payment_master (
	emp_id INT,
	emp_name VARCHAR(50),
	emp_salary numeric(10,2),
	payment_date DATE)
partition by range(payment_date);

-- Since Only Partition Table Is Only Created but no Values are allocated, this table is empty
select * from payment_master

-- Step 4 : Create Individual Partitions Of Your Main/Master/Partition Table (Here, payment_master)

-- Create Partition [1] : for year 2019
create table payment_p2019
partition of payment_master
FOR values from ('2019-01-01') TO ('2020-01-01');

-- Create Partition [2] : for year 2020
create table payment_p2020
partition of payment_master
FOR values from ('2020-01-01') TO ('2021-01-01');

-- Create Partition [3] : for year 2021
create table payment_p2021
partition of payment_master
FOR values from ('2021-01-01') TO ('2022-01-01');

-- Create Partition [4] : for year 2022
create table payment_p2022
partition of payment_master
FOR values from ('2022-01-01') TO ('2023-01-01');

-- Create Partition [5] : for any other year
create table payment_p_default
partition of payment_master
default

-- Step 5 : Insert Values Into These Individual Partitions

-- Inserting Into Partition [1]
insert into payment_master
select * from payment where payment_date between '2019-01-01' and '2020-01-01';

-- Inserting Into Partition [2]
insert into payment_master
select * from payment where payment_date between '2020-01-01' and '2021-01-01';

-- Inserting Into Partition [3]
insert into payment_master
select * from payment where payment_date between '2021-01-01' and '2022-01-01';

-- Inserting Into Partition [4]
insert into payment_master
select * from payment where payment_date between '2022-01-01' and '2023-01-01';

-- Inserting Into Partition [5]
insert into payment_p_default(emp_id, emp_name, emp_salary, payment_date) values (51, 'Veer', '609.65', '2023-10-24');


-- Step 6 : View Each Of Your Partitions 

select * from payment_p2019 -- only 2019 payments
select * from payment_p2020 -- only 2020 payments
select * from payment_p2021 -- only 2021 payments
select * from payment_p2022 -- only 2022 payments
select * from payment_p_default -- only payments other than year 2019 - 2022

-- Step 7 : Observe Your master/partition table

select * from payment_master -- first all payments of 2019 then 2020 then 2021 then 2022 then any other by default

-- Hence the table data is partitioned according to payment_date



--> How to remove partitions ?

-- the ALTER command will keep the partition table as a regular table after removing it from the partitions of the table, 
-- but DROP will remove it from the database.

-- drop any partition ( for this u need to first detach partition from master table and then drop the partition)
alter table payment_master detach partition payment_p2019;
drop table payment_p2019;