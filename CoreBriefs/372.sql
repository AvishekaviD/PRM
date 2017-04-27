/*

select a.Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,Updatedsource,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2) a 
where Updatedsource = 'LK'
group by 1,2;


select 'LK' Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.email_hash) as counts
from 
() a 
group by 2;


--– now – Oct 2015, Sept 2015 – Jan 2015, > Jan 2015
--lastinteractiondate between '2014-10-01' and '2015-10-31'
select a.Updatedsource,
case when a.lastinteractiondate between cast('2015-10-01' as date) and current_date then 'Oct 2015 - now'
when a.lastinteractiondate between cast('2015-01-01' as date) and cast('2015-09-30' as date) then 'Jan 2015 -Sept 2015'
when a.lastinteractiondate < cast('2015-01-01' as date) then '< Jan 2015'
end as months
,count(distinct a.best_mobile_number_hash) as counts
from 
(select best_mobile_number_hash,Updatedsource,max(lastinteractiondate) lastinteractiondate 
from GAIN_THEORY.PRMActiveInactiveOriginal group by 1,2) a 
where Updatedsource = 'BB'
group by 1,2;

select count(distinct best_mobile_number_hash)
from (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'DL'
and (lower(updated_Brand_Name) like '%dove%' or lower(updated_Brand_Name) like '%surf%' or lower(updated_Brand_Name) like '%comfort%'
or lower(updated_Brand_Name) like '%pond%' or lower(updated_Brand_Name) like '%fair%' or lower(updated_Brand_Name) like '%hugg%'
or lower(updated_Brand_Name) like '%lipton%' or lower(updated_Brand_Name) like '%pear%' or lower(updated_Brand_Name) like '%sunsil%'
or lower(updated_Brand_Name) like '%taj%' or lower(updated_Brand_Name) like '%vaselin%' or lower(updated_Brand_Name) like '%red%'
or lower(updated_Brand_Name) like '%lak%')
union 
select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'LK') a;


 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = ''
and column2 = '';


 */

--********* lakme
select 'LK' Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.email_hash) as counts
from (	select distinct email_hash,max(dates) lastinteractiondate
	from (select distinct email_hash,max(cast(date_created as date)) dates from PRM.lk_customer 	group by 1
		union all select a.email_hash,max(cast(SUBSTR(b.trans_date,7,4)||'-'||SUBSTR(b.trans_date,1,2)||'-'||SUBSTR(b.trans_date,4,2) as date)) from PRM.lk_customer_master a 		inner join PRM.lk_transaction b on a.best_mobile_number_hash = b.best_mobile_number_hash where length(a.best_mobile_number_hash) > 0 group by 1
		union all select a.email_hash,max(cast(b.date_created as date)) dates from PRM.lk_customer_master a
		inner join PRM.lk_customer b on a.best_mobile_number_hash = b.best_mobile_number_hash where length(a.best_mobile_number_hash) > 0 group by 1) a
	where length(email_hash) > 0
	group by 1) a
group by 2;


--******* bebeautiful


select 'BB' Updatedsource,
case when a.lastinteractiondate between cast('2015-10-01' as date) and current_date then 'Oct 2015 - now'
when a.lastinteractiondate between cast('2015-01-01' as date) and cast('2015-09-30' as date) then 'Jan 2015 -Sept 2015'
when a.lastinteractiondate < cast('2015-01-01' as date) then '< Jan 2015'
end as months
,count(distinct a.email_hash) as counts
from 
( select distinct email_hash,max(cast(date_created as date)) lastinteractiondate
from PRM.bb_registration
where length(email_hash) > 0
group by email_hash) a 
group by 1,2;


 --Dove, Lakme, Surf, Comfort, Ponds, FAL, Huggies, Lipton, Pears, Sunsilk, Taj Mahal Tea, Vaseline, Red Label, Lipton    

--*******PI DL LSM 

select 'PI DL' Updatedsource,b.finalLSM,count(distinct a.best_mobile_number_hash) as counts
from 
(select distinct Updatedsource,best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'PI' and b.finalLsm in ('4-7','7+')
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from 
(select distinct best_mobile_number_hash
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'DL'
and (lower(updated_Brand_Name) like '%dove%' or lower(updated_Brand_Name) like '%surf%' or lower(updated_Brand_Name) like '%comfort%'
or lower(updated_Brand_Name) like '%pond%' or lower(updated_Brand_Name) like '%fair%' or lower(updated_Brand_Name) like '%hugg%'
or lower(updated_Brand_Name) like '%lipton%' or lower(updated_Brand_Name) like '%pear%' or lower(updated_Brand_Name) like '%sunsil%'
or lower(updated_Brand_Name) like '%taj%' or lower(updated_Brand_Name) like '%vaselin%' or lower(updated_Brand_Name) like '%red%'
or lower(updated_Brand_Name) like '%lak%')
union 
select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'LK') a)
group by 1,2;


--*******PI non DL LSM 

select 'PI Non DL' Updatedsource,b.finalLSM,count(distinct a.best_mobile_number_hash) as counts
from 
(select distinct Updatedsource,best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'PI' and b.finalLsm in ('4-7','7+')
and a.best_mobile_number_hash not in (select  distinct a.best_mobile_number_hash  -- not in conditions
from 
(select distinct Updatedsource,best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'PI' and b.finalLsm in ('4-7','7+')
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from 
(select distinct best_mobile_number_hash
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'DL'
and (lower(updated_Brand_Name) like '%dove%' or lower(updated_Brand_Name) like '%surf%' or lower(updated_Brand_Name) like '%comfort%'
or lower(updated_Brand_Name) like '%pond%' or lower(updated_Brand_Name) like '%fair%' or lower(updated_Brand_Name) like '%hugg%'
or lower(updated_Brand_Name) like '%lipton%' or lower(updated_Brand_Name) like '%pear%' or lower(updated_Brand_Name) like '%sunsil%'
or lower(updated_Brand_Name) like '%taj%' or lower(updated_Brand_Name) like '%vaselin%' or lower(updated_Brand_Name) like '%red%'
or lower(updated_Brand_Name) like '%lak%')
union 
select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'LK') a))
group by 1,2;


--******* careline

select distinct 'CL' Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,count(distinct a.e_mail_hash)
from (select e_mail_hash,max(lastinteractiondate) lastinteractiondate from 
(select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call
group by e_mail_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call_backup_14062016
group by e_mail_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call_pti748
group by e_mail_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call_till_dec2015
group by e_mail_hash
union all 
select email_address_hash,max(cast(posting_date as date)) lastinteractiondate
from PRM.cl_calls_01Mar2014_30jun2014
group by email_address_hash
union all
select cl_email_hash ,max(cast(cl_call_date as date)) lastinteractiondate
from PRM.cl_calls_2012_2013
group by cl_email_hash
union all
select email_address_hash,max(cast(posting_date as date)) lastinteractiondate
from PRM.cl_calls_2013_2014
group by email_address_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_calls_aug_sep_2014
group by e_mail_hash) a
where length(e_mail_hash) > 0
group by 1) a
group by 2;


--**********************************************************************************************
--**********************************************************************************************
--**********************************************************************************************


create table IN0372_data
(provider varchar(10),column2 varchar(100),email_mobile_hash varchar(255));

insert into IN0372_data
select distinct 'LK' Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
,a.email_hash
from (	select distinct email_hash,max(dates) lastinteractiondate
	from (select distinct email_hash,max(cast(date_created as date)) dates from PRM.lk_customer 	group by 1
		union all select a.email_hash,max(cast(SUBSTR(b.trans_date,7,4)||'-'||SUBSTR(b.trans_date,1,2)||'-'||SUBSTR(b.trans_date,4,2) as date)) from PRM.lk_customer_master a 		inner join PRM.lk_transaction b on a.best_mobile_number_hash = b.best_mobile_number_hash where length(a.best_mobile_number_hash) > 0 group by 1
		union all select a.email_hash,max(cast(b.date_created as date)) dates from PRM.lk_customer_master a
		inner join PRM.lk_customer b on a.best_mobile_number_hash = b.best_mobile_number_hash where length(a.best_mobile_number_hash) > 0 group by 1) a
	where length(email_hash) > 0
	group by 1) a;

	
insert into IN0372_data
select distinct 'BB' Updatedsource,
case when a.lastinteractiondate between cast('2015-10-01' as date) and current_date then 'Oct 2015 - now'
when a.lastinteractiondate between cast('2015-01-01' as date) and cast('2015-09-30' as date) then 'Jan 2015 -Sept 2015'
when a.lastinteractiondate < cast('2015-01-01' as date) then '< Jan 2015'
end as months,a.email_hash
from 
( select distinct email_hash,max(cast(date_created as date)) lastinteractiondate
from PRM.bb_registration
where length(email_hash) > 0
group by email_hash) a ;


insert into IN0372_data
select distinct 'PI DL' Updatedsource,b.finalLSM,a.best_mobile_number_hash
from 
(select distinct Updatedsource,best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'PI' and b.finalLsm in ('4-7','7+')
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from 
(select distinct best_mobile_number_hash
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'DL'
and (lower(updated_Brand_Name) like '%dove%' or lower(updated_Brand_Name) like '%surf%' or lower(updated_Brand_Name) like '%comfort%'
or lower(updated_Brand_Name) like '%pond%' or lower(updated_Brand_Name) like '%fair%' or lower(updated_Brand_Name) like '%hugg%'
or lower(updated_Brand_Name) like '%lipton%' or lower(updated_Brand_Name) like '%pear%' or lower(updated_Brand_Name) like '%sunsil%'
or lower(updated_Brand_Name) like '%taj%' or lower(updated_Brand_Name) like '%vaselin%' or lower(updated_Brand_Name) like '%red%'
or lower(updated_Brand_Name) like '%lak%')
union 
select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'LK') a);


insert into IN0372_data
select distinct 'PI Non DL' Updatedsource,b.finalLSM,a.best_mobile_number_hash
from 
(select distinct Updatedsource,best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'PI' and b.finalLsm in ('4-7','7+')
and a.best_mobile_number_hash not in (select  distinct a.best_mobile_number_hash  -- not in conditions
from 
(select distinct Updatedsource,best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal) a 
left join LSM3_CombinedSourceSKU_20170206 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where Updatedsource = 'PI' and b.finalLsm in ('4-7','7+')
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from 
(select distinct best_mobile_number_hash
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'DL'
and (lower(updated_Brand_Name) like '%dove%' or lower(updated_Brand_Name) like '%surf%' or lower(updated_Brand_Name) like '%comfort%'
or lower(updated_Brand_Name) like '%pond%' or lower(updated_Brand_Name) like '%fair%' or lower(updated_Brand_Name) like '%hugg%'
or lower(updated_Brand_Name) like '%lipton%' or lower(updated_Brand_Name) like '%pear%' or lower(updated_Brand_Name) like '%sunsil%'
or lower(updated_Brand_Name) like '%taj%' or lower(updated_Brand_Name) like '%vaselin%' or lower(updated_Brand_Name) like '%red%'
or lower(updated_Brand_Name) like '%lak%')
union 
select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource = 'LK') a));

insert into IN0372_data
select distinct 'CL' Updatedsource,case when current_date - a.lastinteractiondate < 180 then '0-6 Months'
when current_date - a.lastinteractiondate >= 180 and current_date - a.lastinteractiondate < 360 then '6-12 Months'
when current_date - a.lastinteractiondate >= 360 and current_date - a.lastinteractiondate < 720 then '12-24 Months'
when current_date - a.lastinteractiondate >= 720 then '>24 Months' 
when a.lastinteractiondate is null then '>24 Months' end as months
, a.e_mail_hash
from (select e_mail_hash,max(lastinteractiondate) lastinteractiondate from 
(select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call
group by e_mail_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call_backup_14062016
group by e_mail_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call_pti748
group by e_mail_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_call_till_dec2015
group by e_mail_hash
union all 
select email_address_hash,max(cast(posting_date as date)) lastinteractiondate
from PRM.cl_calls_01Mar2014_30jun2014
group by email_address_hash
union all
select cl_email_hash ,max(cast(cl_call_date as date)) lastinteractiondate
from PRM.cl_calls_2012_2013
group by cl_email_hash
union all
select email_address_hash,max(cast(posting_date as date)) lastinteractiondate
from PRM.cl_calls_2013_2014
group by email_address_hash
union all
select e_mail_hash
,max(cast(SUBSTR(posting_date,7,4)||'-'||SUBSTR(posting_date,4,2)||'-'||SUBSTR(posting_date,1,2) as date)) lastinteractiondate
from PRM.cl_calls_aug_sep_2014
group by e_mail_hash) a
where length(e_mail_hash) > 0
group by 1) a;


---*************************************************extraction
--MO_HA_India360_IN0372BBrecencyJan15toSept15_20170211_NanditaGodbole.csv 
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'BB'
and column2 = 'Jan 2015 -Sept 2015';
--MO_HA_India360_IN0372BBrecencyOct15toNow_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'BB'
and column2 = 'Oct 2015 - now';

--MO_HA_India360_IN0372CLrecency6-12months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'CL'
and column2 = '6-12 Months';

--MO_HA_India360_IN0372CLrecencygreaterthan24months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'CL'
and column2 = '>24 Months';

--MO_HA_India360_IN0372CLrecency12-24months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'CL'
and column2 = '12-24 Months';

--MO_HA_India360_IN0372LKrecency0-6months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'LK'
and column2 = '0-6 Months';

--MO_HA_India360_IN0372LKrecency12-24months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'LK'
and column2 = '12-24 Months';

--MO_HA_India360_IN0372LKrecencygreatertahn24months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'LK'
and column2 = '>24 Months';

--MO_HA_India360_IN0372LKrecency6-12months_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'LK'
and column2 = '6-12 Months';

--MO_HA_India360_IN0372LSM4-7PI-DL_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,'PI' provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'PI DL' 
and column2 = '4-7';

--MO_HA_India360_IN0372LSM7+PI-DL_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,'PI' provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'PI DL'
and column2 =  '7+';

--MO_HA_India360_IN0372LSM4-7PInonDL_20170211_NanditaGodbole.csv
select 
    distinct 'IN' as market
    ,'PI' provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider = 'PI Non DL'
and column2 = '4-7';

--MO_HA_India360_IN0372LSM7+PInonDL_20170211_NanditaGodbole.csv
 select 
    distinct 'IN' as market
    ,'PI' provider
	, email_mobile_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.IN0372_data  
where provider =  'PI Non DL'
and column2 = '7+';



