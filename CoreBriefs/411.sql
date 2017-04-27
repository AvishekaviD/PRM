--1,2

select count(distinct [Mobile #]) from 
(SELECT distinct [Mobile #]
  FROM [Unilever_WheelRinMeltag].[dbo].[CampaignDashboard_Generic_Rin_UPTrader_OBD Master]
union all
SELECT distinct [Mobile #]
  FROM [Unilever_WheelRinMeltag].[dbo].[CampaignDashboard_Generic_Rin_UPTrader_SMS Master]) a;


select count(distinct [Mobile #]) from 
(SELECT distinct [Mobile #]
  FROM [Unilever_WheelRinMeltag].[dbo].[CampaignDashboard_Generic_Wheel_WBTrader_SMS Master]
union all
SELECT distinct [Mobile #]
  FROM [Unilever_WheelRinMeltag].[dbo].[CampaignDashboard_Generic_Wheel_WBTrader_OBD Master]) a;

--trader
--3
select region,brand,count(distinct mobile_number) counts 
from GAIN_THEORY.PRMDashboard_data
where consumer = 'trader'
and lower(brand) in ('comfort','magic rinse','rin','sunlight','surf','wheel')
group by 1,2;

--4
select region,brand,count(distinct mobile_number) counts 
from GAIN_THEORY.PRMDashboard_data
where consumer = 'trader'
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh','Maharashtra','Mumbai'
,'Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand','West Bengal & Andaman and Nicobar Is.')
group by 1,2;


--consumer
--1
select region,brand,lsm,case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select lsm,region,brand,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data where lsm in ('0-3','4-7') 
and consumer = 'Customer'
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh','Maharashtra','Mumbai'
,'Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand','West Bengal & Andaman and Nicobar Is.')
group by 1,2,3,4) a group by 1,2,3,4;


select lsm,count(distinct mobile_number) counts 
from (select lsm,region,brand,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data 
where lsm in ('0-3','4-7') and consumer = 'Customer' 
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh'
,'Maharashtra','Mumbai','Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand'
,'West Bengal & Andaman and Nicobar Is.')group by 1,2,3,4) a group by 1;

select brand,count(distinct mobile_number) counts
from (select lsm,region,brand,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data where lsm in ('0-3','4-7') 
and consumer = 'Customer'
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh','Maharashtra','Mumbai'
,'Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand','West Bengal & Andaman and Nicobar Is.')
group by 1,2,3,4) a group by 1;

select region,count(distinct mobile_number) counts 
from (select lsm,region,brand,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data where lsm in ('0-3','4-7') and consumer = 'Customer' 
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh'
,'Maharashtra','Mumbai','Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand'
,'West Bengal & Andaman and Nicobar Is.') group by 1,2,3,4) a group by 1;


select region,lsm,case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select lsm,region,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data where lsm in ('0-3','4-7') 
and consumer = 'Customer'
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh','Maharashtra','Mumbai'
,'Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand','West Bengal & Andaman and Nicobar Is.')
group by 1,2,3) a group by 1,2,3;


--removinh kkt historical data
select region,lsm,case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select lsm,region,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data where lsm in ('0-3','4-7') 
and consumer = 'Customer'
and region in ('Andhra Pradesh','Bihar and Jharkhand','Karnataka','Kolkata','Madhya Pradesh and Chhattisgarh','Maharashtra','Mumbai'
,'Orissa','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand','West Bengal & Andaman and Nicobar Is.')
group by 1,2,3) a 
where mobile_number not in (select distinct best_mobile_number_hash from 
(select distinct best_mobile_number_hash from PRM.kkt_new
union select distinct best_mobile_number_hash from PRM.kkt_response) a)
group by 1,2,3;




/* --wheel bihar check
select distinct campaign,brand_name,region from PRM.dl_all_campaigns a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(campaign) like '%wheel%' or lower(brand_name) like '%wheel%';

select distinct campaign_name,brand_name,region from PRM.dl197_transaction a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(campaign_name) like '%wheel%' or lower(brand_name) like '%wheel%';

select distinct campaign_name,brand_name,region from PRM.dloz_tier3 a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(campaign_name) like '%wheel%' or lower(brand_name) like '%wheel%';

select distinct campaign_name,brand_name,region from PRM.dlts_transaction a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(campaign_name) like '%wheel%' or lower(brand_name) like '%wheel%';

select distinct campaign_name,brand,region from PRM.dlzd_transaction a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(campaign_name) like '%wheel%' or lower(brand) like '%wheel%';

select distinct campaign_name,brand_name,region from PRM.imimobile_tier3 a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(campaign_name) like '%wheel%' or lower(brand_name) like '%wheel%';
*/

/*
----1

alter table KKT_audio_spilt1 add ID_10 int ;
alter table KKT_audio_spilt1 add ID_30 int ;
alter table KKT_audio_spilt1 add ID_31 int ;
alter table KKT_audio_spilt1 add ID_42 int ;
alter table KKT_audio_spilt1 add ID_71 int ;
alter table KKT_audio_spilt1 add ID_72 int ;
alter table KKT_audio_spilt1 add ID_73 int ;
alter table KKT_audio_spilt1 add WheelAddSum int ;

update KKT_audio_spilt1
set ID_10 = 0,ID_30 = 0,ID_31 = 0,ID_42 = 0,ID_71 = 0,ID_72 = 0,ID_73 = 0,WheelAddSum = 0;


update KKT_audio_spilt1
set ID_10 = ID_10 + 1
where audio_ads_played like '%10%';

update KKT_audio_spilt1
set ID_10 = ID_30 + 1
where audio_ads_played like '%30%';

update KKT_audio_spilt1
set ID_10 = ID_31 + 1
where audio_ads_played like '%31%';

update KKT_audio_spilt1
set ID_10 = ID_42 + 1
where audio_ads_played like '%42%';

update KKT_audio_spilt1
set ID_10 = ID_71 + 1
where audio_ads_played like '%71%';

update KKT_audio_spilt1
set ID_10 = ID_72 + 1
where audio_ads_played like '%72%';

update KKT_audio_spilt1
set ID_10 = ID_73 + 1
where audio_ads_played like '%73%';

update KKT_audio_spilt1 
set WheelAddSum = ID_10 + ID_30 + ID_31 + ID_42 + ID_71 + ID_72 + ID_73;



select region,case when current_date -lastinteractiondate <= 90 then 'less than 3 months'
when current_date -lastinteractiondate > 90 and current_date -lastinteractiondate <= 180 then '3-6 months'
when current_date -lastinteractiondate > 180 and current_date -lastinteractiondate <= 270 then '6-9 months'
when current_date -lastinteractiondate > 270 and current_date -lastinteractiondate <= 365 then '9-12 months'
when current_date -lastinteractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,WheelAddSum,count(distinct best_mobile_number_hash)
from (select distinct best_mobile_number_hash ,region_lookup_number ,max(lastinteractiondate) lastinteractiondate,sum(WheelAddSum) WheelAddSum
from KKT_audio_spilt1 group by 1,2) a
inner join PRM.ref_mobile_lookup c
on a.region_lookup_number = c.lookup_prefix5
group by 1,2,3;


*/

select distinct ad_id,ad_name from PRM.kkt_advert_file
where lower(product) like '%whee%';

create table KKT_audio_spilt1
(rownumber int
,audio_ads_played varchar(255)
,best_mobile_number_hash varchar(255)
,region_lookup_number varchar(255)
,lastinteractiondate date
);

insert into KKT_audio_spilt1
sel row_number() over(order by audio_ads_played,best_mobile_number_hash,region_lookup_number,lastinteractiondate)
,audio_ads_played
,best_mobile_number_hash
,region_lookup_number
,lastinteractiondate
from (select distinct audio_ads_played,best_mobile_number_hash
,region_lookup_number,max(cast(call_start_time  as date)) lastinteractiondate
from PRM.kkt_cdrlobd
where  length(audio_ads_played) > 0
group by 1,2,3) a;


create table KKT_audio_spilt_final
(rownumber int
,audio_ads_played varchar(255)
,best_mobile_number_hash varchar(255)
,region_lookup_number varchar(255)
,lastinteractiondate date
);

insert into KKT_audio_spilt_final(audio_ads_played,rownumber)
SELECT token as ads, rownumber
   FROM TABLE (STRTOK_SPLIT_TO_TABLE(KKT_audio_spilt1.rownumber, KKT_audio_spilt1.audio_ads_played, ',')
        RETURNS (rownumber int,
                 tokennum INTEGER,
                 token VARCHAR(128) CHARACTER SET UNICODE)
              ) AS d;

update KKT_audio_spilt_final
from (select distinct rownumber,best_mobile_number_hash,region_lookup_number,lastinteractiondate 
from KKT_audio_spilt1) tab
set best_mobile_number_hash = tab.best_mobile_number_hash
,region_lookup_number = tab.region_lookup_number
,lastinteractiondate = tab.lastinteractiondate
where KKT_audio_spilt_final.rownumber = tab.rownumber;


select region,case when current_date -lastinteractiondate <= 90 then 'less than 3 months'
when current_date -lastinteractiondate > 90 and current_date -lastinteractiondate <= 180 then '3-6 months'
when current_date -lastinteractiondate > 180 and current_date -lastinteractiondate <= 270 then '6-9 months'
when current_date -lastinteractiondate > 270 and current_date -lastinteractiondate <= 365 then '9-12 months'
when current_date -lastinteractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,audio_ads_played,count(distinct best_mobile_number_hash)
from (select distinct best_mobile_number_hash ,region_lookup_number,lastinteractiondate,count(audio_ads_played) audio_ads_played
from (select distinct best_mobile_number_hash ,region_lookup_number,audio_ads_played ,max(lastinteractiondate) lastinteractiondate
from KKT_audio_spilt_final where audio_ads_played in ('10','30','31','42','71','72','73')  group by 1,2,3) a
group by 1,2,3) a
inner join PRM.ref_mobile_lookup c
on a.region_lookup_number = c.lookup_prefix5
group by 1,2,3;









