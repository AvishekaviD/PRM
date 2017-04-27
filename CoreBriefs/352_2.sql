--****** pincodes **---
select 'H2H' Provider,count(distinct best_mobile_number_hash) counts 
from (select distinct best_mobile_number_hash from PRM.h2h_transaction a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and (length(a.latitude) > 0 and length(a.longitude) > 0)
union 
select distinct best_mobile_number_hash from PRM.mindtree_data a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and (length(a.latitude) > 0 and length(a.longitude) > 0)) a

union all
select 'PI' Provider,count(distinct best_mobile_number_hash) from PRM.pi_consumer a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and length(zip_code) > 0

union all

select 'LK' Provider,count(distinct best_mobile_number_hash) from 
(select distinct best_mobile_number_hash from PRM.lk_customer a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and length(zip) > 0

union all

select distinct a.best_mobile_number_hash from PRM.lk_transaction a
inner join PRM.lk_salon_store_master b on a.store_id =b.store_id
inner join PRM.ref_mobile_lookup c on a.region_lookup_number = c.lookup_prefix5
where lower(c.region) = 'delhi'
and length(store_address6) > 0) a;

--******* sms - obd ***------\
select case 
when lower(channel) like '%ivr%' and lower(channel) like '%sms%' then 'OBD/SMS'
when lower(channel) like '%sms%' and lower(channel) like '%ivr%' then 'OBD/SMS'
when lower(channel) like '%obd%' and lower(channel) like '%sms%' then 'OBD/SMS'
when lower(channel) like '%sms%' and lower(channel) like '%obd%' then 'OBD/SMS'
when lower(channel) like '%sms%' then 'SMS'
when lower(channel) like '%ivr%' then 'OBD'
when lower(channel) like '%obd%' then 'OBD'
end as channels,count(distinct best_mobile_number_hash) as counts from (
select distinct campaign,campaign channel,best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'Consumer' campaign_name,'OBD' channel,best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct campaign_name,channel,best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct campaign_name,'OBD' channel,best_mobile_number_hash,region_lookup_number
from PRM.bt_entry a inner join PRM.bt_campaign b on a.campaign_id = b.campaign_id
where campaign_name not in (select distinct campaign_name from PRM.bt_campaign where lower(campaign_name) like '%trader%')
) as a 
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and (lower(channel) like '%sms%'  or lower(channel) like '%ivr%'  or lower(channel) like '%obd%' )
group by 1;



--*** BRANDS INTERACTED ***---
select distinct brand_name,'LSM 4-7' LSM,count(distinct mobile_number) from 
GAIN_THEORY.LSM3_BrandCombined_Unique
where lower(circle) = 'delhi'
and mobile_number in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b
where b.FinalLSM  ='4-7' )
group by 1

union all

select distinct brand_name,'LSM 7+' LSM,count(distinct mobile_number) from 
GAIN_THEORY.LSM3_BrandCombined_Unique
where lower(circle) = 'delhi'
and mobile_number in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b
where b.FinalLSM  = '7+' )
group by 1;


--additional request


select 'H2H' Provider,'NO LSM' LSM,count(distinct best_mobile_number_hash) counts 
from (select distinct best_mobile_number_hash from PRM.h2h_transaction a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and (length(a.latitude) > 0 and length(a.longitude) > 0)
union 
select distinct best_mobile_number_hash from PRM.mindtree_data a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and (length(a.latitude) > 0 and length(a.longitude) > 0)) a
where a.best_mobile_number_hash not in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b
where b.FinalLSM in ('0-3','4-7','7+') )

union all

select 'PI' Provider,'NO LSM' LSM,count(distinct best_mobile_number_hash) from PRM.pi_consumer a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and length(zip_code) > 0
and a.best_mobile_number_hash not in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b
where b.FinalLSM in ('0-3','4-7','7+'))

union all

select 'LK' Provider,'NO LSM' LSM,count(distinct best_mobile_number_hash) from 
(select distinct best_mobile_number_hash from PRM.lk_customer a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) = 'delhi'
and length(zip) > 0

union all

select distinct a.best_mobile_number_hash from PRM.lk_transaction a
inner join PRM.lk_salon_store_master b on a.store_id =b.store_id
inner join PRM.ref_mobile_lookup c on a.region_lookup_number = c.lookup_prefix5
where lower(c.region) = 'delhi'
and length(store_address6) > 0) a
where a.best_mobile_number_hash not in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b
where b.FinalLSM in ('0-3','4-7','7+'))


--*** heat map



create multiset table "GAIN_THEORY".IN0352_Data
(
best_mobile_number_hash varchar(300),region_lookup_number varchar(30),
region varchar(100),source varchar(100),lastinteractiondate date,brand_name varchar(100),updated_Brand_Name varchar(100));


delete from "GAIN_THEORY".IN0352_Data;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 
,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(interaction_date,1,10) as date)
from PRM.h2h_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where interaction_date  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%','%/%')and LENGTH(interaction_date)>0
;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 
,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(geo_timestamp,1,10) as date)
from PRM.mindtree_data a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where geo_timestamp  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%','%/%')
and LENGTH(geo_timestamp)>0
;



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 
,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(interaction_date,7,4)||'-'||SUBSTR(interaction_date,4,2)||'-'||SUBSTR(interaction_date,1,2) as date)
from PRM.h2h_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where interaction_date  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and  interaction_date LIKE ANY ('%/%') and LENGTH(interaction_date)>0
;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(geo_timestamp,7,4)||'-'||SUBSTR(geo_timestamp,4,2)||'-'||SUBSTR(geo_timestamp,1,2) as date)
from PRM.mindtree_data a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where geo_timestamp  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and  geo_timestamp LIKE ANY ('%/%') and LENGTH(geo_timestamp)>0
;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct  best_mobile_number_hash ,region_lookup_number ,'H2H',brand,updatedbrand_name,cast(("year"||'-'||"Month"||'-'||"Day") as date)
from (
select distinct  best_mobile_number_hash ,region_lookup_number ,c.brand,updatedbrand_name,
Case
when substr(geo_timestamp,8,2)='12' then '2012' when substr(geo_timestamp,8,2)='13' then '2013'
when substr(geo_timestamp,8,2)='14' then '2014' when substr(geo_timestamp,8,3)='15' then '2015'
when substr(geo_timestamp,8,3)='16' then '2016' when substr(geo_timestamp,8,3)='17' then '2017'
when substr(geo_timestamp,8,3)='18' then '2018'when substr(geo_timestamp,8,3)='18' then '2019' end "Year",
case 
when substr(geo_timestamp,4,3)='Jan' then '01' when substr(geo_timestamp,4,3)='Feb' then '02'
when substr(geo_timestamp,4,3)='Mar' then '03' when substr(geo_timestamp,4,3)='Apr' then '04'
when substr(geo_timestamp,4,3)='May' then '05' when substr(geo_timestamp,4,3)='Jun' then '06'
when substr(geo_timestamp,4,3)='Jul' then '07' when substr(geo_timestamp,4,3)='Aug' then '08'
when substr(geo_timestamp,4,3)='Sep' then '09' when substr(geo_timestamp,4,3)='Oct' then '10'
when substr(geo_timestamp,4,3)='Nov' then '11'when substr(geo_timestamp,4,3)='Dec' then '12' end "Month"
,substr(geo_timestamp,1,2) "Day"
from PRM.mindtree_data c
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on c.Brand=b.Brand_name
where  geo_timestamp   LIKE ANY ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and LENGTH(geo_timestamp)>0 ) as a ;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',brand,updatedbrand_name,cast(("year"||'-'||"Month"||'-'||"Day") as date)
from (
select distinct  best_mobile_number_hash ,region_lookup_number ,c.brand,updatedbrand_name,
Case
when substr(interaction_date,8,2)='12' then '2012' when substr(interaction_date,8,2)='13' then '2013'
when substr(interaction_date,8,2)='14' then '2014' when substr(interaction_date,8,3)='15' then '2015'
when substr(interaction_date,8,3)='16' then '2016' when substr(interaction_date,8,3)='17' then '2017'
when substr(interaction_date,8,3)='18' then '2018'when substr(interaction_date,8,3)='18' then '2019' end "Year",
case 
when substr(interaction_date,4,3)='Jan' then '01' when substr(interaction_date,4,3)='Feb' then '02'
when substr(interaction_date,4,3)='Mar' then '03' when substr(interaction_date,4,3)='Apr' then '04'
when substr(interaction_date,4,3)='May' then '05' when substr(interaction_date,4,3)='Jun' then '06'
when substr(interaction_date,4,3)='Jul' then '07' when substr(interaction_date,4,3)='Aug' then '08'
when substr(interaction_date,4,3)='Sep' then '09' when substr(interaction_date,4,3)='Oct' then '10'
when substr(interaction_date,4,3)='Nov' then '11'when substr(interaction_date,4,3)='Dec' then '12' end "Month"
,substr(interaction_date,1,2) "Day"
from PRM.h2h_transaction c
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on c.Brand=b.Brand_name
where  interaction_date   LIKE ANY ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and LENGTH(interaction_date)>0 ) as a ;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(transaction_date as date)
from PRM.lk_transaction_all_years;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(SUBSTR(trans_date,7,4)||'-'||SUBSTR(trans_date,1,2)||'-'||SUBSTR(trans_date,4,2) as date)
from PRM.lk_transaction;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK',cast(date_created as date)
from  PRM.lk_customer;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(SUBSTR(lk_date,7,4)||'-'||SUBSTR(lk_date,1,2)||'-'||SUBSTR(lk_date,4,2) as date)
from PRM.lk_redeem_transaction;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(SUBSTR(transaction_date,7,4)||'-'||SUBSTR(transaction_date,1,2)||'-'||SUBSTR(transaction_date,4,2) as date)
from PRM.lk_redemption_all_years;


---pureit

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'PI'
,cast(SUBSTR(create_date,1,10) as date)
from PRM.pi_consumer
where LENGTH(create_date)>1;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'PI'
,cast(date_created as date)
from PRM.pi_consumer
where LENGTH(create_date)<1;

--complaint
insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(SUBSTR(b.create_date,1,10) as date)
from PRM.pi_consumer a
inner join PRM.pi_complaint b on a.customer_number=b.customer_number
where LENGTH(b.create_date)>1;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(b.date_created as date)
from PRM.pi_consumer a
inner join PRM.pi_complaint b on a.customer_number=b.customer_number
where LENGTH(b.create_date)<1;


--rfs

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(SUBSTR(b.order_date,1,10) as date)
from PRM.pi_consumer a
inner join PRM.pi_rfs b on a.customer_number=b.customer_number
where LENGTH(b.order_date)>1;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(b.date_created as date)
from PRM.pi_consumer a
inner join PRM.pi_rfs b on a.customer_number=b.customer_number
where LENGTH(b.order_date)<1;


