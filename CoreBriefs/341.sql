/*
select distinct lk_code from PRM.lk_service_master
where service_description in ('Chemicals','Facials','Hair Advanced','Hair Care Chem Treat - Advanced','Hair Care Service- Advance'
,'Hair Care Services - Advanced','Hair Chemical Services','Hair Color','Hair Next Services - Advanced'
,'Hair Spas','Skin Care Services - Advanced','Skin care services advance');

--
select count(distinct best_mobile_number_hash) from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Chemicals','Facials','Hair Advanced','Hair Care Chem Treat - Advanced','Hair Care Service- Advance'
,'Hair Care Services - Advanced','Hair Chemical Services','Hair Color','Hair Next Services - Advanced'
,'Hair Spas','Skin Care Services - Advanced','Skin care services advance'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a;
--

*/

Members with mobile number (overall)
Have spent at least Rs. 10K over the past year
Have availed any of these services at least once in the past year:
•	Hair Advanced
•	Hair Care Chem Treat - Advanced
•	Hair Care Service- Advance
•	Hair Care Services - Advanced
•	Hair Chemical Services
•	Hair Color
•	Hair Next Services - Advanced
•	Hair Spas
•	Chemicals
•	Facials
•	Skin Care Services - Advanced
•	Skin care services advance




--***********************************
select 'Hair Care Chem Treat - Advanced' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Care Chem Treat - Advanced'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Chemicals' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Chemicals'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Facials' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Facials'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Hair Advanced' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Advanced'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all


select 'Hair Care Service- Advance' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Care Service- Advance'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Hair Care Services - Advanced' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Care Services - Advanced'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Hair Chemical Services' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Chemical Services'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Hair Color' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Color'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Hair Next Services - Advanced' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Next Services - Advanced'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Hair Spas' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Hair Spas'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Skin Care Services - Advanced' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Skin Care Services - Advanced'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a

union all

select 'Skin care services advance' category, count(distinct best_mobile_number_hash) counts from (
select best_mobile_number_hash,sum(amount) as sum_amt
from PRM.lk_transaction
where lk_code in (select distinct lk_code from PRM.lk_service_master
where service_description in ('Skin care services advance'))
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) > 10000) as a;
--***********************************















































select lk_category,count(distinct best_mobile_number_hash) as counts
from PRM.lk_transaction
where lk_category in ('Chemicals','Facials','Hair Advanced','Hair Care Chem Treat - Advanced','Hair Care Service- Advance'
,'Hair Care Services - Advanced','Hair Chemical Services','Hair Color','Hair Next Services - Advanced'
,'Hair Spas','Skin care services advance','Skin Care Services - Advanced')
and trans_date like '%2016%'
group by lk_category;

select count(distinct best_mobile_number_hash) from (
select best_mobile_number_hash, sum(amount) as amt
from PRM.lk_transaction
where lk_category in ('Chemicals','Facials','Hair Advanced','Hair Care Chem Treat - Advanced','Hair Care Service- Advance'
,'Hair Care Services - Advanced','Hair Chemical Services','Hair Color','Hair Next Services - Advanced'
,'Hair Spas','Skin care services advance','Skin Care Services - Advanced')
and trans_date like '%2016%'
group by best_mobile_number_hash
having sum(amount) >= 10000) as a;
