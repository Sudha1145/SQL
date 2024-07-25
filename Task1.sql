create database creator;
use creator;
create table state_info(s_id int,s_name varchar(25),capital_city varchar(25),area_sq_km int,region varchar(25),population int,founded_year int,CM_state varchar(25),no_of_dist int);
alter table state_info add column unemployment_rate int;
alter table state_info add column region_id int;
alter table state_info add column elevation int;
alter table state_info add column governor_id int;
alter table state_info add column governor_name  int;

alter table state_info rename column s_id to state_id;
alter table state_info rename column s_name to state_name;
alter table state_info rename column CM_state to CM_name;
alter table state_info rename column region to Region;
alter table state_info rename column no_of_dist to no_of_district;
select * from state_info;

ALTER TABLE state_info MODIFY COLUMN area_sq_km bigint;
ALTER TABLE state_info MODIFY COLUMN Region_id bigint;
ALTER TABLE state_info MODIFY COLUMN population bigint;
ALTER TABLE state_info MODIFY COLUMN governor_name varchar(20);
ALTER TABLE state_info MODIFY COLUMN elevation bigint;

insert into state_info values(1, 'Maharashtra', 'Mumbai', 307713, 'West', 123144223, 1960, 'Uddhav Thackeray', 36, 3, 1, 450001, 1, 'BhagatSinghKoshyari');
insert into state_info values(2, 'Uttar Pradesh', 'Lucknow', 243286, 'North', 204200521, 1950, 'Yogi Adityanath', 75, 4, 1, 1470002, 2, 'AnandibenPatel');
insert into state_info values(3, 'Bihar', 'Patna', 94163, 'East', 124799926, 1912, 'Nitish Kumar', 38, 4.5, 1, 62003, 3, 'Phagu Chauhan');
insert into state_info values(4, 'West Bengal', 'Kolkata', 88752, 'East', 99609303, 1950, 'Mamata Banerjee', 23, 5, 1, 100567, 4, 'Jagdeep Dhankhar');
insert into state_info values(5, 'Madhya Pradesh', 'Bhopal', 308252, 'Central', 85358965, 1956, 'Shivraj Singh Chouhan', 52, 3.5, 1, 500003, 5, 'MangubhaiC.Patel');
insert into state_info values(6, 'Tamil Nadu', 'Chennai', 130058, 'South', 77841267, 1950, 'M. K. Stalin', 38, 3.2, 1, 100034, 6, 'R.N.Ravi');
insert into state_info values(7, 'Rajasthan', 'Jaipur', 342239, 'North', 77264033, 1949, 'Ashok Gehlot', 33, 4.1, 1, 30045, 7, 'Kalraj Mishra');
insert into state_info values(8, 'Karnataka', 'Bengaluru', 191791, 'South', 67562686, 1956, 'Basavaraj Bommai', 31, 3.8, 1, 900895, 8, 'Thawar Chand');
insert into state_info values(9, 'Gujarat', 'Gandhinagar', 196024, 'West', 63872399, 1960, 'Bhupendra Patel', 33, 2.9, 1, 600567, 9, 'Acharya Devvrat');
insert into state_info values(10, 'Andhra Pradesh', 'Amaravati', 162968, 'South', 53903393, 1953, 'Y. S. Jagan Mohan Reddy', 13, 3.5, 1, 10096, 10, 'Biswa Harichandan');
insert into state_info values(11, 'Odisha', 'Bhubaneswar', 155707, 'East', 46356334, 1936, 'Naveen Patnaik', 30, 3.0, 1, 50096, 11, 'Ganeshi Lal');
insert into state_info values(12, 'Telangana', 'Hyderabad', 112077, 'South', 35193978, 2014, 'K. Chandrashekar Rao', 33, 2.7, 1, 50046, 12, 'Soundararajan');
insert into state_info values(13, 'Kerala', 'Thiruvananthapuram', 38863, 'South', 35699443, 1956, 'Pinarayi Vijayan', 14, 4.2, 1, 180034, 13, 'ArifMohammedKhan');
insert into state_info values(14, 'Assam', 'Dispur', 78438, 'Northeast', 35607039, 1950, 'Himanta Biswa Sarma', 34, 3.8, 1, 500005, 14, 'JagdishMukhi');
insert into state_info values(15, 'Punjab', 'Chandigarh', 50362, 'North', 30141373, 1966, 'Bhagwant Mann', 23, 2.9, 1, 400768, 15, 'BanwarilalPurohit');
insert into state_info values(17, 'Jharkhand', 'Ranchi', 79714, 'East', 38593948, 2000, 'Hemant Soren', 24, 3.4, 1, 2109, 16, 'Ramesh Bais');
insert into state_info values(18, 'Chhattisgarh', 'Raipur', 135194, 'Central', 29668809, 2000, 'Bhupesh Baghel', 28, 2.8, 1, 325, 17, 'Anusuiya Uikey');
insert into state_info values(19, 'Uttarakhand', 'Dehradun', 53483, 'North', 11082791, 2000, 'Pushkar Singh Dhami', 13, 2.5, 1, 700, 18, 'Gurmit Singh');
insert into state_info values(20, 'Himachal Pradesh', 'Shimla', 55673, 'North', 7307914, 1971, 'Jai Ram Thakur', 12, 2.1, 1, 3500, 19, 'Rajendra Vishwanath');
insert into state_info values(21, 'Goa', 'Panaji', 3702, 'West', 1548233, 1987, 'Pramod Sawant', 2, 1.5, 1, 100, 20, 'PsSreedharanPillai');


UPDATE  state_info SET  CM_name='Shivaraj Singh Chowhan' where state_id=5;
UPDATE  state_info SET  Region_id=2 where state_id=2;
UPDATE  state_info SET  population=99609303 where state_name='West Bengal';
UPDATE  state_info SET  area_sq_km=191791 where state_name='Karnataka';
UPDATE  state_info SET  no_of_district=14 where state_id=10;
UPDATE  state_info SET  unemployment_rate=5 where state_id=3;
UPDATE  state_info SET  unemployment_rate=6 where state_id=2;
UPDATE  state_info SET  unemployment_rate=7 where state_id=4;
UPDATE  state_info SET  unemployment_rate=9 where state_id=8;
UPDATE  state_info SET  Region_id=3 where state_id=3;
UPDATE  state_info SET  Region_id=5 where state_id=5;
UPDATE  state_info SET  Region_id=6 where state_id=7;
select * from state_info;

delete from state_info where state_id=21;
delete from state_info where state_name='Assam';
delete from state_info where governor_name='ArifMohammedKhan';

select * from state_info where state_id=18 and state_name='chhattisgarh';
select * from state_info where capital_city='Raipur' or Region='East';
select * from state_info where state_id in(1,2,3,4);
select * from state_info where state_id not in(1,2,3,4);

