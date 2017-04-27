drop table IN0406_Extractdata;

create table IN0406_Extractdata(provider varchar(10),best_mobile_number_hash varchar(255));

drop table IN0406_data;

create table IN0406_data(provider varchar(10),best_mobile_number_hash varchar(255));


--insert lk data into temp 

insert into IN0406_data
select distinct 'LK' as provider,best_mobile_number_hash
from (select distinct best_mobile_number_hash,extract(year from transaction_date) trans_year,sum(amount) amount_sum
from (select distinct best_mobile_number_hash 
,cast(SUBSTR(trans_date,7,4)||'-'||SUBSTR(trans_date,1,2)||'-'||SUBSTR(trans_date,4,2) as date) transaction_date
,cast(amount as int) amount
from PRM.lk_transaction a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%mumb%'
union select distinct best_mobile_number_hash,cast(transaction_date as date) transaction_date,cast(amount as int)
from PRM.lk_transaction_all_years a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%mumb%') a
group by 1,2) a
where amount_sum >= 5000;

--inser lk data into extract table

insert into IN0406_Extractdata
select provider,best_mobile_number_hash from IN0406_data;

--delete temp data

delete from IN0406_data;

--insert pi data into temp

insert into IN0406_data
select distinct 'PI' as provider,best_mobile_number_hash
from (select distinct device_category,best_mobile_number_hash from PRM.pi_consumer_BKP_15mar2017 a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%mumb%'
union all select distinct device_category,best_mobile_number_hash from PRM.pi_consumer a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%mumb%') a
where device_category not in ('AFL','Classic','Compact','INT','M03')
and best_mobile_number_hash not in (select distinct best_mobile_number_hash from IN0406_Extractdata);

--insert pi data to extract

insert into IN0406_Extractdata
select provider,best_mobile_number_hash from IN0406_data;

--delete old data

delete from IN0406_data;

--insert bb data into temp
insert into IN0406_data
select distinct 'BB' as provider,best_mobile_number_hash
from (select distinct best_mobile_number_hash,region_lookup_number from PRM.bb_registration
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.bb_registration_26102016_bkp
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.bb_registration_backup) a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%mumb%' and best_mobile_number_hash not in (select distinct best_mobile_number_hash from IN0406_Extractdata);

--insert bb data into extract
insert into IN0406_Extractdata
select provider,best_mobile_number_hash from IN0406_data;

--delete old data

delete from IN0406_data;

--dl h2h insert into temp table 
insert into IN0406_data
select distinct provider, mobile_number
from (select distinct provider,lsm,confidence,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where provider in ('DL','H2H') and lsm = '7+' and confidence in ('60','90') and lower(region) like '%mum%'
and current_date -lastinetractiondate <= 365
and mobile_number not in (select distinct best_mobile_number_hash from IN0406_Extractdata)
and provider not in ('BB','LK','PI')
group by provider,lsm,confidence,mobile_number) a;

--dl h2h insert into extract table 
insert into IN0406_Extractdata
select provider,best_mobile_number_hash from IN0406_data;

--delete old data

delete from IN0406_data;

--mobile data into temp
insert into IN0406_data
select distinct provider,mobile_number
from (select distinct provider,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where lsm = '7+' and lower(region) like '%mum%'
group by provider,mobile_number) a
where mobile_number not in (select distinct best_mobile_number_hash from IN0406_Extractdata)
and provider not in ('BB','LK','PI');

--mobile data into extract
insert into IN0406_Extractdata
select provider,best_mobile_number_hash from IN0406_data;

drop table IN0406_data;

--email data
insert into IN0406_Extractdata
select distinct provider,email
from (select distinct provider,email,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where lsm = '7+' and lower(region) like '%mum%'
group by provider,email) a;


--counts check

select provider,count(distinct best_mobile_number_hash) from IN0406_Extractdata
group by 1;


select distinct provider,count(distinct mobile_number) 
from (select distinct provider,email mobile_number
from GAIN_THEORY.PRMDashboard_data
where lsm = '7+' and lower(region) like '%mum%'
union all select distinct provider,mobile_number 
from GAIN_THEORY.PRMDashboard_data
where lsm = '7+' and lower(region) like '%mum%') a
group by 1;


--MO_HA_Mgage_IN0406MumbaiLSM7Plus_20170413_KritiPatel.csv

 select distinct 'IN' as market
 ,provider
 , best_mobile_number_hash as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0406_Extractdata ;
 