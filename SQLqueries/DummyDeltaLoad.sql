-- Creating my own dummy tables to set up a delta load

-- FULL COPY DATA SET UP FIRST, DELTA LOAD WILL COME NEXT
 
-- Code below creates dummy tables and can be used to test the DummyCopy pipeline from GC_AlexanderCJ branch in the data factory

DROP TABLE IF EXISTS Dummy_Oracle  -- Can drop table before recreating if needed

CREATE TABLE Dummy_Oracle (
    ID int,
	column2 varchar(10),
	create_date datetime2,
	latest_date datetime2
	);

INSERT INTO Dummy_Oracle (ID, column2, create_date, latest_date)
VALUES (1, 'value1', '2022-07-25 13:01:00', '2022-07-25 13:01:00'),
        (4, 'value2', '2022-07-25 13:01:00', '2022-07-25 13:25:00'),
		(3, 'value3', '2022-07-25 13:25:00', '2022-07-25 13:25:00');

select * from Dummy_Oracle -- To see whats in Dummy_Oracle table

CREATE TABLE Dummy_2 (
    ID int,
	column2 varchar(10),
	create_date datetime2,
	latest_date datetime2
	);

select * from Dummy_2 -- To see whats in Dummy_2 table - The ouptut of the Copy data1 pipeline

-- DELTA LOAD

-- Use same Dummy_Oracle table

DROP TABLE IF EXISTS Dummy_Oracle -- Can drop tables before recreating if needed
DROP TABLE IF EXISTS Dummy_Oracle_2
DROP TABLE IF EXISTS Dummy_Output
DROP TABLE IF EXISTS watermarktable
DROP TABLE IF EXISTS Tab



CREATE TABLE Dummy_Oracle (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

INSERT INTO Dummy_Oracle (ID, column2, create_date, latest_date)
VALUES	(1, 'value1', '2022-07-25 13:32:00', '2022-07-25 13:47:02'),
		(2, 'value3', '2022-07-25 13:32:00', '2022-07-25 13:47:10'),
		(4, 'value4', '2022-07-25 13:32:00', '2022-07-25 13:47:10'),
		(4, 'value5', '2022-07-25 13:32:00', '2022-07-25 13:47:11'),
		(5, 'value6', '2022-07-25 13:32:00', '2022-07-25 13:47:12');

CREATE TABLE Dummy_Oracle_2 (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

INSERT INTO Dummy_Oracle_2 (ID, column2, create_date, latest_date)
VALUES (1, 'value1', '2022-07-25 13:01:00', '2022-07-25 13:01:00'),
		(3, 'value5', '2022-07-25 13:25:00', '2022-07-25 13:47:00'),
		(4, 'value4', '2022-07-25 13:47:00', '2022-07-25 13:47:00');

select * from Dummy_Oracle -- To see whats in Dummy_Oracle table
select * from Dummy_Oracle_2 -- To see whats in Dummy_Oracle_2 table (updated table), row 1 is same, row 2 is deleted, row 3 has been updated and a fourth row added

CREATE TABLE Dummy_Output (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

create table watermarktable
(
WatermarkValue datetime,
);
INSERT INTO watermarktable
VALUES ('2022-07-25 13:01:00')

CREATE OR ALTER PROCEDURE update_watermark @LastModifiedtime datetime
AS

BEGIN

    UPDATE watermarktable
    SET [WatermarkValue] = @LastModifiedtime 

END

select * from watermarktable
select * from Dummy_Oracle
select * from Dummy_Output

-- Attempting to only update rows so there are not multiple of the same ID

select top 1 * from Dummy_Output
where (ID IN (select ID
from Dummy_Output
group by ID
having count(ID) > 1))
order by latest_date desc

CREATE TABLE Tab (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

INSERT INTO Tab (ID, column2, create_date, latest_date)
VALUES (1, 'value1', '2022-07-25 13:01:00', '2022-07-25 13:01:00'),
		(1, 'value5', '2022-07-25 13:25:00', '2022-07-25 13:47:02'),
		(1, 'value4', '2022-07-25 13:47:00', '2022-07-25 13:47:04'),
		(2, 'value5', '2022-07-25 13:25:00', '2022-07-25 13:47:10'),
		(2, 'value5', '2022-07-25 13:25:00', '2022-07-25 13:47:12'),
		(2, 'value5', '2022-07-25 13:25:00', '2022-07-25 13:47:14');

-- This code finds the rows of repeated ID's with the most up to date latest_date

SELECT * FROM Tab

select ID, column2, create_date, latest_date from 
	(select *, 
	MAX(latest_date) OVER(PARTITION BY ID) AS Max_date
	from Tab
	where (ID IN (select ID
	from Tab
	group by ID
	having count(ID) > 1))) as t2
where latest_date = Max_date

-- NEXT YOU WANT TO REMOVE ANY ROWS WITH REPEATED IDs AND
-- THEN APPEND ONLY THE ABOVE ROWS ENSURING THAT YOU ONLY 
-- HAVE THE MOST UP TO DATE ROWS INCLUDED

-- SHOULD NOT BE TOO LARGE COMPUTATIONALLY AS ONLY RUNS WHEN
-- REPEATS ARE PRESENT, WILL ONLY BE COMPUTATIONALLY EXPENSIVE
-- IF A LARGE NUMBER OF UPDATES ARE DONE AT ONCE WHICH IS
-- UNLIKELY TO HAPPEN

DROP TABLE IF EXISTS Tab2

CREATE TABLE Tab2 (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

INSERT INTO Tab2 (ID, column2, create_date, latest_date)
select ID, column2, create_date, latest_date from 
	(select *, 
	MAX(latest_date) OVER(PARTITION BY ID) AS Max_date
	from Dummy_Output
	where (ID IN (select ID
	from Dummy_Output
	group by ID
	having count(ID) > 1))) as t2
where latest_date = Max_date

select * from Tab2

-- DELETE FROM Dummy_Output
-- WHERE (ID NOT IN (SELECT ID FROM Dummy_Oracle))

DELETE FROM dbo.Dummy_Output
WHERE (ID NOT IN (SELECT ID FROM dbo.Dummy_Oracle))

INSERT INTO Dummy_Output
SELECT * FROM Tab3

select * from Tab3
select * from Dummy_Oracle
select * from Dummy_Output

----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
-- CLEANED CODE TO RUN DELTA LOAD ON DUMMY DATA WITH WALKTHROUGH
-- ALL OF THIS CODE MUST BE RUN IN CONJUNCTION WITH THE CORRESPONDING PIPELINE IN THE GCPipeline ADF (explained in walkthrough)
-- CORRESPONDING PIPELINE IS -- DeltaLoad_Deletes_Appends_AndUpdates -- CAN BE FOUND IN GC_AlexanderCJ branch of GCPipeline ADF
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

-- Drop tables before the first run of the delta load

DROP TABLE IF EXISTS Dummy_Oracle
DROP TABLE IF EXISTS Dummy_Output
DROP TABLE IF EXISTS watermarktable

-- Create the Dummy_Oracle table and intialise it with some data

CREATE TABLE Dummy_Oracle (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

INSERT INTO Dummy_Oracle (ID, column2, create_date, latest_date)
VALUES	(1, 'value1', '2022-07-25 13:32:00', '2022-07-25 13:47:10'),
		(2, 'value2', '2022-07-25 13:32:00', '2022-07-25 13:47:02'),
		(3, 'value3', '2022-07-25 13:32:00', '2022-07-25 13:47:10');

-- To see update, delete and append run this insert instead

INSERT INTO Dummy_Oracle (ID, column2, create_date, latest_date)
VALUES	(1, 'value1', '2022-07-25 13:32:00', '2022-07-25 13:47:10'),
		(3, 'value5', '2022-07-25 13:32:00', '2022-07-25 13:47:20'),
		(4, 'value4', '2022-07-25 13:32:00', '2022-07-25 13:47:20');

-- Create the Dummy_Output table (table that will recieve the delta loaded data)

CREATE TABLE Dummy_Output (
    ID int,
	column2 varchar(10),
	create_date datetime,
	latest_date datetime
	);

-- Create the watermarktable for delta load

CREATE TABLE watermarktable
(
WatermarkValue datetime,
);

INSERT INTO watermarktable
VALUES ('2020-07-25 13:01:00')

-- Create the procedure for delta load (links to ADF code)

CREATE OR ALTER PROCEDURE update_watermark @LastModifiedtime datetime
AS

BEGIN

    UPDATE watermarktable
    SET [WatermarkValue] = @LastModifiedtime 

END

-- Run 3 lines below to see whats currently in Dummy tables, run this prior to running the pipeline, check they're as you'd expect then proceed

select * from watermarktable
select * from Dummy_Oracle
select * from Dummy_Output

------------------------------------------------------------------------------------------------------------------------------------------------
-- !!!!!     NOW RUN THE DeltaLoad_Deletes_Appends_AndUpdates PIPELINE IN ADF (This will perform the delta load)     !!!!!
------------------------------------------------------------------------------------------------------------------------------------------------

-- Tab3 will contain the latest updates to any rows that have been updated (repeated IDs removed)
select * from Tab3

-- Run the next two lines to see the output and compare it to the input
select * from Dummy_Oracle
select * from Dummy_Output

-- On the first run through the Dummy_Oracle table should be the same as the Dummy_Output

-- When running the delta load again follow these steps:
--------------------------------------------------------------------------------------------------------------------------------------------------
-- 1) DROP THE Dummy_Oracle table THEN RECREATE IT WITH THE MODIFIED DATA (updates, deletes, and additional rows as required) 
-- 2) RUN THE PIPELINE AGAIN
-- 3) RUN THE LAST 3 LINES OF CODE AGAIN TO SEE THE OUTPUT (Should have updated, deleted and appended as specified)