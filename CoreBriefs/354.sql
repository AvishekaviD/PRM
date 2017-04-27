create table LK_Services
(
service_type varchar(100),
service_code varchar(100),
service_name varchar(255),
service_description varchar(255),
service_category varchar(50),
service_amount int
);

delete from LK_Services;

insert into LK_Services(service_type,service_code,service_name,service_description,service_category)
select distinct service_type,service_code,service_name,service_description,service_category
from PRM.lk_salon_service_master_1;


insert into LK_Services(service_type,service_code,service_name,service_description,service_category,service_amount)
select distinct service_type,service_code,service_name,service_description,service_category,cast(service_amount as int) service_amount
from PRM.lk_salon_service_master;

insert into LK_Services(service_type,service_code,service_name,service_description,service_category,service_amount)
select distinct lk_type service_type,lk_code service_code,'' service_name,a.service_description,studio service_category,cast(unit_cost as int) service_amount
from (select distinct lk_type,lk_code,service_description,studio,unit_cost from PRM.lk_service_master) a
;

create table LK_Services_unique
(
service_type varchar(100),
service_code varchar(100),
service_name varchar(255),
service_description varchar(255),
service_category varchar(50),
service_amount int
);

delete from LK_Services_unique;


insert into LK_Services_unique
select distinct * from LK_Services;

select * from LK_Services_unique;

/*
update LK_Services_unique 
from (select distinct service_code,service_category,service_amount 
from (select distinct service_code,service_category,cast(service_amount as int) service_amount
from PRM.lk_salon_service_master
union 
select distinct lk_type service_code,studio service_category,cast(unit_cost as int) service_amount
from PRM.lk_service_master) a) tab
set service_amount = tab.service_amount
where LK_Services_unique.service_code = tab.service_code
and LK_Services_unique.service_category = tab.service_category;*/



-- *** changed 


select 'last 6 months > 2000',count(distinct best_mobile_number_hash) as counts from 
(select best_mobile_number_hash,sum(amount) amount
from Temp_Lakme_dataCounts
where current_date - interactionDate <= 180
group by best_mobile_number_hash) a
where amount >= 2000

union 

select 'last 6 months all' recency,count(distinct best_mobile_number_hash) from (
select distinct best_mobile_number_hash ,region_lookup_number 
,cast(transaction_date as date) interactiondate
from PRM.lk_transaction_all_years

union all
select distinct best_mobile_number_hash ,region_lookup_number 
,cast(SUBSTR(trans_date,7,4)||'-'||SUBSTR(trans_date,1,2)||'-'||SUBSTR(trans_date,4,2) as date) interactiondate
from PRM.lk_transaction

union all
select distinct best_mobile_number_hash ,region_lookup_number ,cast(date_created as date) interactiondate
from  PRM.lk_customer

union all
select distinct best_mobile_number_hash ,region_lookup_number 
,cast(SUBSTR(lk_date,7,4)||'-'||SUBSTR(lk_date,1,2)||'-'||SUBSTR(lk_date,4,2) as date) interactiondate
from PRM.lk_redeem_transaction

union all
select distinct best_mobile_number_hash ,region_lookup_number 
,cast(SUBSTR(transaction_date,7,4)||'-'||SUBSTR(transaction_date,1,2)||'-'||SUBSTR(transaction_date,4,2) as date) interactiondate
from PRM.lk_redemption_all_years
) a
where current_date - interactionDate <= 180

union 

select '1 year > 2000' recency,count(distinct best_mobile_number_hash) as counts from 
(select best_mobile_number_hash,
case when cast(interactionDate as varchar(50)) like '%2016%' then '2016'
when cast(interactionDate as varchar(50)) like '%2015%' then '2015'
when cast(interactionDate as varchar(50)) like '%2014%' then '2014'
when cast(interactionDate as varchar(50)) like '%2013%' then '2013'
when cast(interactionDate as varchar(50)) like '%2012%' then '2012'
when cast(interactionDate as varchar(50)) like '%2011%' then '2011'
else 'Old' end recency
,sum(amount) amount
from Temp_Lakme_dataCounts
group by 1,2) a
where amount >= 2000

union 

select 'Overall' recency,count(distinct best_mobile_number_hash) from (
select distinct best_mobile_number_hash from PRM.lk_transaction_all_years
union all
select distinct best_mobile_number_hash from PRM.lk_transaction
union all
select distinct best_mobile_number_hash from  PRM.lk_customer
union all
select distinct best_mobile_number_hash from PRM.lk_redeem_transaction
union all
select distinct best_mobile_number_hash from PRM.lk_redemption_all_years
) a;



