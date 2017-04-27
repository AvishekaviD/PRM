select distinct campaign_id from PRM.bt_campaign
where lower(campaign_name) like '%trader%' and country_code = 'IN';

 
select count(distinct best_mobile_number_hash) traders
from (select distinct best_mobile_number_hash from PRM.bt_entry
where campaign_id in (select distinct campaign_id from PRM.bt_campaign
where lower(campaign_name) like '%trader%' and country_code = 'IN')
union all
select distinct best_mobile_number_hash from PRM.dl197_transaction
where campaign_name = 'TAAZA Reynolds') a;


select Updatedsource,count(distinct best_mobile_number_hash) from PRMActiveInactiveOriginal
group by 1;

select count(distinct best_mobile_number_hash) from GAIN_THEORY.PRMActiveInactiveOverallFinal_Distinct;

--slide 3 
--lsm recency
select b.FinalLsm,
case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOverallFinal_Distinct group by 1) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
group by 1,2;



--take numbers from bt and dl raynolds camapaign

--slide 5

--provider wise recency
select a.Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,Updatedsource,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2) a 
group by 1,2;


--lsm h2h
select b.FinalLsm,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,Updatedsource,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where  a.Updatedsource = 'H2H'
group by 1,2;



--brandwise recency h2h
select a.updated_Brand_Name,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,updated_Brand_Name,Updatedsource,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2,3) a 
where  a.Updatedsource = 'H2H'
group by 1,2;


--LSM7+

--lsm recency
select b.FinalLsm,
case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOverallFinal_Distinct group by 1) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where b.FinalLsm = '7+'
group by 1,2;



--LSM 7+ brands

select b.FinalLsm,a.updated_Brand_Name,
case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,updated_Brand_Name,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where b.FinalLsm = '7+'
group by 1,2,3;


--LSM 4-7

--lsm recency
select b.FinalLsm,
case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOverallFinal_Distinct group by 1) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where b.FinalLsm = '4-7'
group by 1,2;



--LSM 4-7 brands

select b.FinalLsm,a.updated_Brand_Name,
case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,updated_Brand_Name,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where b.FinalLsm = '4-7'
group by 1,2,3;




--H2H
select variant,count(distinct best_mobile_number_hash) counts 
from (select distinct variant,best_mobile_number_hash from PRM.h2h_transaction
where length(variant) > 0 and length(best_mobile_number_hash) > 0union all select distinct variant,best_mobile_number_hash from PRM.mindtree_data
where length(variant) > 0 and length(best_mobile_number_hash) > 0) a
group by 1
;

select count(distinct best_mobile_number_hash) Citycounts 
from (select distinct variant,best_mobile_number_hash from PRM.h2h_transaction
where length(city) > 0 and length(best_mobile_number_hash) > 0
union all select distinct variant,best_mobile_number_hash from PRM.mindtree_data
where length(city) > 0 and length(best_mobile_number_hash) > 0) a
;

select count(distinct best_mobile_number_hash) LatLongcounts 
from (select distinct latitude, longitude,best_mobile_number_hash from PRM.h2h_transaction
where length(latitude) > 0 and length(longitude) > 0 and length(best_mobile_number_hash) > 0
union all select distinct latitude, longitude,best_mobile_number_hash from PRM.mindtree_data
where length(latitude) > 0 and length(longitude) > 0 and length(best_mobile_number_hash) > 0) a
;






---------*********************************************

--bb_registration.age, bb_registration.email_hash, bb_registration.city

select count(distinct best_mobile_number_hash)
from PRM.bb_registration
where length(age) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '4-7');

select count(distinct best_mobile_number_hash)
from PRM.bb_registration
where length(age) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '7+');


select count(distinct email_hash)
from PRM.bb_registration
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '4-7');

select count(distinct email_hash)
from PRM.bb_registration
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '7+');


select count(distinct best_mobile_number_hash)
from PRM.bb_registration
where length(city) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '4-7');

select count(distinct best_mobile_number_hash)
from PRM.bb_registration
where length(city) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '7+');


select count(distinct best_mobile_number_hash)
from PRM.bb_registration
where length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '4-7');

select count(distinct best_mobile_number_hash)
from PRM.bb_registration
where length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where FinalLsm = '7+');



--pi_consumer.zip_code, pi_consumer.city


select b.finalLsm,count(distinct a.best_mobile_number_hash)
from PRM.pi_consumer a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(a.best_mobile_number_hash) > 0 and length(zip_code) >5
and b.finalLsm in ('4-7','7+')
group by 1;


select b.finalLsm,count(distinct a.best_mobile_number_hash)
from PRM.pi_consumer a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(a.best_mobile_number_hash) > 0 and length(city) > 0
and b.finalLsm in ('4-7','7+')
group by 1;




--h2h_transaction.variant, h2h_transaction.latitude, h2h_transaction.longitude, h2h_transaction.city


select b.finalLsm,count(distinct a.best_mobile_number_hash) col from (
select variant,latitude,longitude,city,best_mobile_number_hash from PRM.h2h_transaction
union all select variant,latitude,longitude,city,best_mobile_number_hash from PRM.mindtree_data) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(variant) > 0 and length(a.best_mobile_number_hash) > 0
and b.finalLsm in ('4-7','7+')
group by 1;

select b.finalLsm,count(distinct a.best_mobile_number_hash) longLat from (
select variant,latitude,longitude,city,best_mobile_number_hash from PRM.h2h_transaction
union all select variant,latitude,longitude,city,best_mobile_number_hash from PRM.mindtree_data) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(a.best_mobile_number_hash) > 0 and length(latitude) > 0 and length(longitude) > 0
and b.finalLsm in ('4-7','7+')
group by 1;


select b.finalLsm,count(distinct a.best_mobile_number_hash) col from (
select variant,latitude,longitude,city,best_mobile_number_hash from PRM.h2h_transaction
union all select variant,latitude,longitude,city,best_mobile_number_hash from PRM.mindtree_data) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(city) > 0 and length(a.best_mobile_number_hash) > 0 and b.finalLsm in ('4-7','7+')
group by 1;


--lk_customer.city, lk_customer.zip, lk_customer.gender, lk_customer.email_hash, lk_customer.date_of_birth

select b.finalLsm,count(distinct a.best_mobile_number_hash) zipcode
from (select distinct zip,best_mobile_number_hash from PRM.lk_customer
union select distinct zip,best_mobile_number_hash from PRM.lk_customer_pti748
union select distinct store_address6,best_mobile_number_hash from PRM.lk_transaction a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union select distinct store_address6,best_mobile_number_hash from PRM.lk_transaction_all_years a
inner join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union select distinct store_address6,best_mobile_number_hash from PRM.lk_transaction_void_cust a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union select distinct store_address6,best_mobile_number_hash from PRM.lk_transaction_voided a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(zip) > 0 and length(a.best_mobile_number_hash) > 0
group by 1;


select b.finalLsm,count(distinct a.best_mobile_number_hash) zipcode
from (select distinct city,best_mobile_number_hash from PRM.lk_customer
union select distinct city,best_mobile_number_hash from PRM.lk_customer_pti748
union select distinct store_address4,best_mobile_number_hash from PRM.lk_transaction a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union select distinct store_address4,best_mobile_number_hash from PRM.lk_transaction_all_years a
inner join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union select distinct store_address4,best_mobile_number_hash from PRM.lk_transaction_void_cust a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union select distinct store_address4,best_mobile_number_hash from PRM.lk_transaction_voided a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(city) > 0 and length(a.best_mobile_number_hash) > 0
group by 1;



select b.finalLsm,count(distinct a.email_hash) zipcode
from (select distinct email_hash,best_mobile_number_hash from PRM.lk_customer
union select distinct email_hash,best_mobile_number_hash from PRM.lk_customer_pti748
union select distinct email_hash,best_mobile_number_hash from PRM.lk_customer_master) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(email_hash) > 0 and length(a.best_mobile_number_hash) > 0
group by 1;


select b.finalLsm,count(distinct a.best_mobile_number_hash) zipcode
from (select distinct gender,best_mobile_number_hash from PRM.lk_customer
union select distinct gender,best_mobile_number_hash from PRM.lk_customer_pti748
union select distinct gender,best_mobile_number_hash from PRM.lk_customer_master) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(gender) > 0 and length(a.best_mobile_number_hash) > 0
group by 1;


select b.finalLsm,count(distinct a.best_mobile_number_hash) zipcode
from (select distinct date_of_birth,best_mobile_number_hash from PRM.lk_customer
union select distinct date_of_birth,best_mobile_number_hash from PRM.lk_customer_pti748
union select distinct age,best_mobile_number_hash from PRM.lk_customer_master) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(date_of_birth) > 0 and length(a.best_mobile_number_hash) > 0
group by 1;

--bt pincode, dob/age ,sku

select 'SKU 4',count(distinct best_mobile_number_hash) 
from PRM.bt_entry a inner join (select distinct product_id,pack_size from  PRM.bt_product) b on a.product_id = b.product_id
where a.campaign_id in (select distinct campaign_id from PRM.bt_campaign where country_code = 'IN')
and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select distinct best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where finalLsm = '4-7');

select 'SKU 7',count(distinct best_mobile_number_hash) 
from PRM.bt_entry a inner join (select distinct product_id,pack_size from  PRM.bt_product) b on a.product_id = b.product_id
where a.campaign_id in (select distinct campaign_id from PRM.bt_campaign where country_code = 'IN')
and length(best_mobile_number_hash) > 0
and best_mobile_number_hash in (select distinct best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where finalLsm = '7+');


select 'Age 4',count(distinct best_mobile_number_hash) from 
PRM.bt_entry a inner join (select distinct entry_id,campaign_id,profile_id,question_id,answer_id from PRM.bt_response) b
on a.campaign_id= b.campaign_id and a.entry_id = b.entry_id and a.profile_id = b.profile_id 
where  a.campaign_id in (select distinct campaign_id from PRM.bt_campaign where country_code = 'IN')
and length(best_mobile_number_hash) > 0
and b.question_id in (select distinct question_id
from PRM.bt_question where lower(question_text) like '% your age%' 
or  lower(question_text) like '% age are %' or  lower(question_text) like '% age group %') 
and b.answer_id is not null
and best_mobile_number_hash in (select distinct best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where finalLsm = '4-7');

select 'Age 7',count(distinct best_mobile_number_hash) from 
PRM.bt_entry a inner join (select distinct entry_id,campaign_id,profile_id,question_id,answer_id from PRM.bt_response) b
on a.campaign_id= b.campaign_id and a.entry_id = b.entry_id and a.profile_id = b.profile_id 
where  a.campaign_id in (select distinct campaign_id from PRM.bt_campaign where country_code = 'IN')
and length(best_mobile_number_hash) > 0
and b.question_id in (select distinct question_id
from PRM.bt_question where lower(question_text) like '% your age%' 
or  lower(question_text) like '% age are %' or  lower(question_text) like '% age group %') 
and b.answer_id is not null
and best_mobile_number_hash in (select distinct best_mobile_number_hash 
from LSM3_CombinedSourceSKU_20170206 where finalLsm = '7+');


select b.finalLsm,count(distinct a.best_mobile_number_hash)
from (select distinct  zip_code, best_mobile_number_hash from GAIN_THEORY.taj2_mobile_pincode
union all select distinct cast(zip_code as varchar(7)) zip_code, "Mobile number" from GAIN_THEORY.taj_mobile_pincode
union all select distinct Pincode,Mobile# from GAIN_THEORY.fal_mobile_pincode) a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where length(zip_code) > 0 and length(a.best_mobile_number_hash) > 0
group by 1;




--dl overlap

select Updatedsource, count(distinct best_mobile_number_hash)
from GAIN_THEORY.PRMActiveInactiveOriginal
group by Updatedsource;



select 'PI  in DL' ,Updatedsource,b.finalLsm, count(distinct a.best_mobile_number_hash)
from GAIN_THEORY.PRMActiveInactiveOriginal a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'PI')
group by 2,3

union all

select 'H2H in DL' ,Updatedsource,b.finalLsm, count(distinct a.best_mobile_number_hash)
from GAIN_THEORY.PRMActiveInactiveOriginal a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'H2H')
group by 2,3

union all

select 'BT in DL' ,Updatedsource,b.finalLsm, count(distinct a.best_mobile_number_hash)
from GAIN_THEORY.PRMActiveInactiveOriginal a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'BT')
group by 2,3

union all

select 'LK in DL' ,Updatedsource,b.finalLsm, count(distinct a.best_mobile_number_hash)
from GAIN_THEORY.PRMActiveInactiveOriginal a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'LK')
group by 2,3

union all

select 'BB in DL' ,Updatedsource,b.finalLsm, count(distinct a.best_mobile_number_hash)
from GAIN_THEORY.PRMActiveInactiveOriginal a
inner join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'BB')
group by 2,3;