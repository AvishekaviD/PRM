select provider,lsm,'TamilNadu' region,consumer,
case when current_date - lastinetractiondate <= 365 then '0-1 Year'
when current_date - lastinetractiondate > 365 and current_date - lastinetractiondate <= 1095 then '1-3 year'
else 'More than 3 Year' end Recency,count(distinct mobile_number) MobileCounts
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%tamil%' or  lower(region) like '%chenn%'
group by 1,2,3,4,5;


SELECT distinct cast('IN' as char(2)) 
||','||cast(provider as char(3)) 
||','||cast(best_mobile_number_hash as char(50)) 
||','||cast('1' as char(2))
||','||cast('Unilever' as char(10)) as "market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value"   
from IN0400_data 
where provider = 'DL' and city = 'Alwar' and recency = '0-1 year'and best_mobile_number_hash is not null and best_mobile_number_hash <> '';


select 'Bangalore Male' region,count(distinct mobile_number) mobile_number 
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%')
and gender = 'Male' group by 1,2,3,4) a
union all

select 'Bangalore Female' Region,count(distinct mobile_number) mobile_number 
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%')
and gender = 'Female' group by 1,2,3,4) a
where current_date - lastinetractiondate < 130;

insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Delhi Male' region,provider,lastinetractiondate, mobile_number 
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and lower(region) like '%delh%'
and gender = 'Male' group by 1,2,3,4) a
where current_date - lastinetractiondate < 300
;

insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Delhi Female' Region,provider,lastinetractiondate, mobile_number 
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and lower(region) like '%delh%'
and gender = 'Female' group by 1,2,3,4) a
where current_date - lastinetractiondate < 90;


insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Mumbai Male' region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and lower(region) like '%mumb%'
and gender = 'Male' group by 1,2,3,4) a
;

insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Mumbai Female' Region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and lower(region) like '%mumb%'
and gender = 'Female' group by 1,2,3,4) a
where current_date - lastinetractiondate < 120;

insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Kolkata Male' region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and lower(region) like '%kolk%'
and gender = 'Male' group by 1,2,3,4) a
where current_date - lastinetractiondate < 270
;

insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Kolkata Female' Region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and lower(region) like '%kolk%'
and gender = 'Female' group by 1,2,3,4) a
where current_date - lastinetractiondate < 220;


insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Bangalore Male' region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%')
and gender = 'Male' group by 1,2,3,4) a;


insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Bangalore Male' region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%')
and brand in ('AXE','LIFEBUOY') 
and mobile_number not in (select distinct mobile_number 
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%')
and gender = 'Female' group by 1,2,3,4) a
where current_date - lastinetractiondate < 130) 
group by 1,2,3,4) a;

insert into IN0415_data(City_gender ,provider ,lastinetractiondate ,mobile_number )
select distinct 'Bangalore Female' Region,provider,lastinetractiondate, mobile_number
from (select gender,provider,lsm,mobile_number,max(lastinetractiondate) lastinetractiondate 
from GAIN_THEORY.PRMDashboard_data
where ((lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
and (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%')
and gender = 'Female' group by 1,2,3,4) a
where current_date - lastinetractiondate < 130;
