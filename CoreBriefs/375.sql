--drop table IN0375_data;

create table IN0375_data
(provider varchar(255)
,city varchar(255)
,zip varchar(255)
,best_mobile_number_hash varchar(255));

insert into IN0375_data(provider,city,best_mobile_number_hash,zip)
select distinct provider,case when lower(city) like '%madhu%' then 'Madhurai'
when lower(city) like '%madur%' then 'Madhurai'
when lower(city) like '%salem%' then 'Salem'
when lower(city) like '%selam%' then 'Salem'
when lower(city) like '%belg%' then 'Belgaum'
when lower(city) like '%davana%' then 'Davanagere'
when lower(city) like '%dvg%' then 'Davanagere'
when lower(city) like '%davang%' then 'Davanagere'
when lower(city) like '%erod%' then 'Erode'
end as city,a.best_mobile_number_hash,zip
from (select distinct 'LK' provider,address4 city,age,address5 zip,'Female' gender,email_hash,name2 Names,best_mobile_number_hash from PRM.lk_customer_master
union all select distinct 'LK' provider,city,age_group,zip,'Female' gender,email_hash,'' Names,best_mobile_number_hash from PRM.lk_customer
union select distinct 'LK' provider,city,age_group,zip,'Female' gender,email_hash,'' Names,best_mobile_number_hash from PRM.lk_customer_pti748
union select distinct 'LK' provider,store_address4 city,'' age,store_address6 zip,'Female' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.lk_redeem_transaction a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union select distinct 'LK' provider,store_address4 city,'' age,store_address6 zip,'Female' gender,'' email_hash,'' name
,best_mobile_number_hash from PRM.lk_redemption_all_years a inner join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union select distinct 'LK' provider,store_address4 city,'' age,store_address6 zip,'Female' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.lk_transaction a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id 
union select distinct 'LK' provider,store_address4 city,'' age,store_address6 zip,'Female' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.lk_transaction_all_years a
inner join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union select distinct 'LK' provider,store_address4 city,'' age,store_address6 zip,'Female' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.lk_transaction_void_cust a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union select distinct 'LK' provider,store_address4 city,'' age,store_address6 zip,'Female' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.lk_transaction_voided a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
union all select distinct 'H2H' provider,city,'' age,latitude||longitude zip,'' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.h2h_transaction
union all select distinct 'H2H' provider,city,'' age,latitude||longitude zip,'' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.mindtree_data 
union all select distinct 'BB' provider,city,age,'' zip,'Female' gender,email_hash,'' name,best_mobile_number_hash from PRM.bb_registration 
union all select distinct 'PI' provider,city,'' age,zip_code zip,'' gender,'' email_hash,'' name,best_mobile_number_hash from PRM.pi_consumer
) a where length(city) > 0 and length(a.best_mobile_number_hash) > 0 
and (lower(city) like '%madhur%' or lower(city) like '%madur%'  or lower(city) like '%salem%'  or lower(city) like '%selam%'
 or lower(city) like '%belg%'  or lower(city) like '%davanag%'  or lower(city) like '%dvg%'  or lower(city) like '%davang%'
  or lower(city) like '%erode%')
 and best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU_20170206 
where FinalLSM = '7+');







---data

--extract 
--MO_HA_India360_IN0375Belgaum_20170216_PriyankaMathew
select top 2000 market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select distinct 'IN' as market,provider, best_mobile_number_hash as mobileno
, '1' as optin_hierarchy_level, 'Unilever' as optin_hierarchy_value,zip from IN0375_data
where city = 'Belgaum' and length(zip) > 0 and length(city) > 0 and length(best_mobile_number_hash) > 0
and zip not like '%0.0,0.0%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from (select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1) a
where current_date - lastinteractiondate < 365)) a;


--MO_HA_India360_IN0375Davanagere_20170216_PriyankaMathew
select top 2000 market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from ( select distinct 'IN' as market,provider, best_mobile_number_hash as mobileno
, '1' as optin_hierarchy_level, 'Unilever' as optin_hierarchy_value,zip from IN0375_data
where city = 'Davanagere' and length(zip) > 0 and length(city) > 0 and length(best_mobile_number_hash) > 0
and zip not like '%0.0,0.0%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from (select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1) a
where current_date - lastinteractiondate < 365)) a;

--MO_HA_India360_IN0375Erode_20170216_PriyankaMathew
select market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select top 2000 market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select distinct 'IN' as market,provider, best_mobile_number_hash as mobileno
, '1' as optin_hierarchy_level, 'Unilever' as optin_hierarchy_value,zip from IN0375_data
where city = 'Erode' and length(zip) > 0 and length(city) > 0 and length(best_mobile_number_hash) > 0
and zip not like '%0.0,0.0%') a) a
union
select market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select top 500 market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select distinct 'IN' as market,provider, best_mobile_number_hash as mobileno
, '1' as optin_hierarchy_level, 'Unilever' as optin_hierarchy_value,zip from IN0375_data
where city = 'Erode' and length(city) > 0 and length(best_mobile_number_hash) > 0
and best_mobile_number_hash not in (select distinct best_mobile_number_hash from IN0375_data
where city = 'Erode' and length(zip) > 0 and length(city) > 0 and length(best_mobile_number_hash) > 0)) a) a;


--MO_HA_India360_IN0375Madurai_20170216_PriyankaMathew
select top 2000 market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select distinct 'IN' as market,provider, best_mobile_number_hash as mobileno
, '1' as optin_hierarchy_level, 'Unilever' as optin_hierarchy_value,zip from IN0375_data
where city = 'Madhurai' and length(zip) > 0 and length(city) > 0 and length(best_mobile_number_hash) > 0
and zip not like '%0.0,0.0%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from (select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1) a
where current_date - lastinteractiondate < 365)) a;


--MO_HA_India360_IN0375Salem_20170216_PriyankaMathew
select top 2000 market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value,zip
from (select distinct 'IN' as market,provider, best_mobile_number_hash as mobileno
, '1' as optin_hierarchy_level, 'Unilever' as optin_hierarchy_value,zip from IN0375_data
where city = 'Salem' and length(zip) > 0 and length(city) > 0 and length(best_mobile_number_hash) > 0
and zip not like '%0.0,0.0%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from (select best_mobile_number_hash,max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1) a
where current_date - lastinteractiondate < 365)) a;
