CREATE DATABASE Information;
USE Information;
CREATE TABLE movie_info(id bigint,movie_name varchar(50),movie_hero_name varchar(50),ReleaseYear int,Duration int);
ALTER TABLE movie_info ADD COLUMN movie_heroin_name varchar(50),ADD COLUMN Director varchar(50),ADD COLUMN movie_language varchar(50),ADD COLUMN IsAvailabe boolean,ADD COLUMN movie_budget bigint;
ALTER TABLE movie_info RENAME COLUMN movie_name TO Title,RENAME COLUMN ReleaseYear TO movie_release_year,RENAME COLUMN Duration TO duration_hrs,RENAME COLUMN movie_language TO langauage,RENAME COLUMN movie_budget TO movie_income;
SELECT * FROM movie_info;
INSERT INTO movie_info values(1000001,'Power','Punit Rajkumar',2014,3,'Trisha','K.Madesh','Kannada',TRUE,16);
INSERT INTO movie_info values(1000002,'KGF','Yash',2018,3,'Srinidhi Shetty','Prashanth Neel','Kannada',TRUE,250);
INSERT INTO movie_info values(1000003,'Love Mocktail','Krishna',2022,3,'Milana','Darling Krishna','Kannada',TRUE,2);
INSERT INTO movie_info values(1000004,'Leo','Vijay',2023,3,'Trisha','Lokesh Kanagaraj','Tamil',TRUE,300);
INSERT INTO movie_info values(1000005,'The Godfather','Michael Corleone',1972,3,'Diane Keaton','Francis Ford Coppola','English',TRUE,16);
INSERT INTO movie_info values(1000006,'Rajakumar','Punit Rajkumar',2017,3,'Priya Anand','Santhosh Ananddram','Kannada',TRUE,15);
INSERT INTO movie_info values(1000007,'Kirik Party','Rakshit Shetty',2016,3,'Rashmika Mandanna','Rishab Shetty','Kannada',TRUE,40);
INSERT INTO movie_info values(1000008,'Mungaru Male','Ganesh',2006,3,'Pooja Gandhi','Yogaraj Bhat','Kannada',TRUE,70);
INSERT INTO movie_info values(1000009,'Ugram','Srimurali',2014,3,'Haripriya','Prashanth Neel','Kannada',TRUE,20);
INSERT INTO movie_info values(1000010,'Tagaru','Shiva Rajkumar',2018,3,'Bhavana','Duniya Soori','Kannada',TRUE,25);
SELECT * FROM movie_info;
UPDATE movie_info SET IsAvailabe = False where id = 1000005;
UPDATE movie_info SET duration_hrs=4 where Title= 'KGF';
UPDATE movie_info SET duration_hrs=4 where Title= 'Kirik Party';
UPDATE movie_info SET movie_hero_name= 'appu' where id = 1000001;
UPDATE movie_info SET movie_hero_name= 'Rakshit' where Title='Kirik Party';
UPDATE movie_info SET  id = 1000011 where movie_heroin_name ='Priya Anand';
UPDATE movie_info SET IsAvailabe= False where id = 1000009;
UPDATE movie_info SET movie_hero_name= 'Darling Krisha' where id = 1000003;
UPDATE movie_info SET  id = 1000012 where Title='Love Mocktail';
UPDATE movie_info SET movie_hero_name= 'Rocking Star Yash' where Title = 'KGF';

DELETE FROM movie_info where id = 1000012;
DELETE FROM movie_info where Title = 'Tagaru';
DELETE FROM movie_info where movie_release_year = 2016;

SELECT * FROM movie_info where Title ='KGF' AND id = 1000002;
SELECT * FROM movie_info where duration_hrs =4 OR Title ='Leo';
SELECT * FROM movie_info where Title IN('Power','KGF','Ugram');
SELECT * FROM movie_info where id NOT IN( 1000004,1000008);


USE Information;
CREATE TABLE bank_info(bankId bigint,bankName varchar(50),BranchName varchar(50),AcHolderName varchar(50),branchCode int);
ALTER TABLE bank_info ADD COLUMN City varchar(50),ADD COLUMN ContactNumber bigint,ADD COLUMN OffersOnlineBanking Boolean,ADD COLUMN IFSCCode varchar(50),ADD COLUMN Balance bigint;
ALTER TABLE bank_info MODIFY COLUMN bankId int;
SELECT * FROM bank_info;
INSERT INTO bank_info values(1,'State Bank of India','Main Branch','Sudha',12345, 'Bangalore',8618640680,True,'SBIN0000001',500000);
INSERT INTO bank_info values(2,'HDFC','Koramangala','Prajakta',12365, 'Bangalore',9663709145,True,'HDFC0001234',100000);
INSERT INTO bank_info values(3,'ICICI','MG Road','Prerana',23745, 'Bangalore',8618649443,True,'ICICI0005678',50000);
INSERT INTO bank_info values(4,'AXIS','Indiranagar','Sahana',32645, 'Bangalore',9449640680,True,'UTIB0009876',2500000);
INSERT INTO bank_info values(5,'State Bank of India','Main Branch','Soumya',96235, 'Bangalore',9493240680,True,'SBIN0067345',1000000);
INSERT INTO bank_info values(6,'Punjab National Bank','Whitefield','Sushmita',98284, 'Bangalore',9663740680,True,'PUNB0012345',55000);
INSERT INTO bank_info values(7,'KVG','Belagavi','Prajwal',12685, 'Belagavi',8092340680,True,'KVG0000001',100000);
INSERT INTO bank_info values(8,'Canara Bank','Rajajinagar','Prateek',93345, 'Bangalore',8095613460,True,'CNR0000001',200000);
INSERT INTO bank_info values(9,'HDFC','Koramanagala','Omkar',68345, 'Bangalore',9449306474,True,'HDFC0005692',30000);
INSERT INTO bank_info values(10,'ICICI','MG Road','Prachi',12965, 'Bangalore',8674640680,True,'ICICI0008091',400000);
SELECT * FROM bank_info;
UPDATE bank_info SET OffersOnlineBanking = False where bankId = 2;
UPDATE bank_info SET AcHolderName = 'Bhagya' where branchCode = 96235;
UPDATE bank_info SET branchCode= 12345 where city = 'Bangalore';
UPDATE bank_info SET IFSCCode = 'HDFC0001145' where bankId = 2;
UPDATE bank_info SET bankName = 'SBI' where branchCode = 12345;
UPDATE bank_info SET OffersOnlineBanking = False where bankId = 4;
UPDATE bank_info SET AcHolderName = 'Priya' where bankId = 8;
UPDATE bank_info SET bankName = 'CNR Bank' where AcHolderName='Prateek';
UPDATE bank_info SET branchCode = 98284 where bankId = 6;
UPDATE bank_info SET OffersOnlineBanking = False where bankId = 7;

DELETE FROM bank_info where bankId=5;
DELETE FROM bank_info where AcHolderName = 'sudha';
DELETE FROM bank_info where branchCode=96235;

SELECT * FROM bank_info where bankId=3 AND AcHolderName = 'Prerana';
SELECT * FROM bank_info where BranchName = 'Belagavi' OR bankId = 4;
SELECT * FROM bank_info where bankId IN(2,7,9);
SELECT * FROM bank_info where branchCode NOT IN (12345,12685);








