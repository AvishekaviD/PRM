Hyderabad
Pune
Ahmedabad
Lucknow
Jaipur
Chandigarh
Patna
Gurgaon
Vijayawada

--City mapping 
create table IN0332_Temp_City_mobile_mapped
(
mobileno varchar(500)
,city varchar(100)
);

insert into GAIN_THEORY.IN0332_Temp_City_mobile_mapped
select best_mobile_number_hash as mobileno,
case when lower(a.city) like 'hyder%' then 'Hyderabad'
when lower(a.city) like 'hydra%' then 'Hyderabad'
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
when lower(a.city) like 'ahmed%' then 'Ahmedabad'
when lower(a.city) like 'ahmad%' then 'Ahmedabad'
when lower(a.city) like 'ahmd%' then 'Ahmedabad'
when lower(a.city) like 'aham%' then 'Ahmedabad'
when lower(a.city) like 'ahem%' then 'Ahmedabad'
when lower(a.city) in ('lacknou'
,'lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw'
,'lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow'
,'locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow'
,'lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu'
,'lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno'
,'lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw'
,'laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow'
,'luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow'
,'lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow'
,'luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown'
,'lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau'
,'lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou'
,'lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown'
,'lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow'
,'lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow'
,'lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow'
,'lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw'
,'luknow','luncknow','lunknow') then 'Lucknow'
when lower(a.city) like 'jaip%' then 'Jaipur'
when lower(a.city) like 'chandi%' then 'Chandigarh'
when lower(a.city) like 'pat%' then 'Patna'
when lower(a.city) like 'patn%' then 'Patna'
when lower(a.city) like 'gurg%' then 'Gurgaon'
when lower(a.city) like 'vija%' then 'Vijayawada'
end as city
from (
select distinct best_mobile_number_hash ,city from PRM.mindtree_data
union select distinct best_mobile_number_hash,city from PRM.h2h_transaction
union select distinct best_mobile_number_hash,city from PRM.bb_registration
union select distinct best_mobile_number_hash,city from PRM.lk_customer
union select distinct best_mobile_number_hash,city from PRM.lk_customer_pti748
union select distinct best_mobile_number_hash,city from PRM.pi_consumer) as a
where lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' 
or lower(a.city) like 'ahmed%' 
or lower(a.city) like 'ahmad%' 
or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' 
or lower(a.city) like 'ahem%' 
or lower(a.city) in ('lacknou'
,'lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw'
,'lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow'
,'locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow'
,'lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu'
,'lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno'
,'lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw'
,'laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow'
,'luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow'
,'lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow'
,'luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown'
,'lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau'
,'lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou'
,'lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown'
,'lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow'
,'lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow'
,'lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow'
,'lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw'
,'luknow','luncknow','lunknow') 
or lower(a.city) like 'jaip%'
or lower(a.city) like 'chandi%'
or lower(a.city) like 'pat%'
or lower(a.city) like 'patn%'
or lower(a.city) like 'gurg%'
or lower(a.city) like 'vija%';


-- data extraction
create table IN0332_Temp
(
market varchar(10)
,provider varchar(10)
,city varchar(100)
,confidence varchar(10)
,mobileno varchar(500)
,optin_hierarchy_level varchar(10)
,optin_hierarchy_value varchar(100)
);

insert into GAIN_THEORY.IN0332_Temp
select 
    distinct 'IN' as market
    , provider
	, case when lower(a.city) like 'hyder%' then 'Hyderabad'
when lower(a.city) like 'hydra%' then 'Hyderabad'
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
when lower(a.city) like 'ahmed%' then 'Ahmedabad'
when lower(a.city) like 'ahmad%' then 'Ahmedabad'
when lower(a.city) like 'ahmd%' then 'Ahmedabad'
when lower(a.city) like 'aham%' then 'Ahmedabad'
when lower(a.city) like 'ahem%' then 'Ahmedabad'
when lower(a.city) in ('lacknou'
,'lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw'
,'lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow'
,'locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow'
,'lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu'
,'lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno'
,'lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw'
,'laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow'
,'luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow'
,'lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow'
,'luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown'
,'lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau'
,'lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou'
,'lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown'
,'lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow'
,'lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow'
,'lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow'
,'lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw'
,'luknow','luncknow','lunknow') then 'Lucknow'
when lower(a.city) like 'jaip%' then 'Jaipur'
when lower(a.city) like 'chandi%' then 'Chandigarh'
when lower(a.city) like 'pat%' then 'Patna'
when lower(a.city) like 'patn%' then 'Patna'
when lower(a.city) like 'gurg%' then 'Gurgaon'
when lower(a.city) like 'vija%' then 'Vijayawada'
end as city
	,'60' confidence
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'H2H' as provider, best_mobile_number_hash ,city from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,city from PRM.h2h_transaction
union select distinct 'BB' as provider,best_mobile_number_hash,city from PRM.bb_registration
union select distinct 'LK' as provider,best_mobile_number_hash,city from PRM.lk_customer
union select distinct 'LK' as provider,best_mobile_number_hash,city from PRM.lk_customer_pti748
union select distinct 'PI' as provider,best_mobile_number_hash,city from PRM.pi_consumer) as a
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60')
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' 
or lower(a.city) like 'ahmed%' 
or lower(a.city) like 'ahmad%' 
or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' 
or lower(a.city) like 'ahem%' 
or lower(a.city) in ('lacknou'
,'lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw'
,'lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow'
,'locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow'
,'lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu'
,'lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno'
,'lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw'
,'laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow'
,'luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow'
,'lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow'
,'luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown'
,'lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau'
,'lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou'
,'lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown'
,'lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow'
,'lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow'
,'lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow'
,'lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw'
,'luknow','luncknow','lunknow') 
or lower(a.city) like 'jaip%'
or lower(a.city) like 'chandi%'
or lower(a.city) like 'pat%'
or lower(a.city) like 'patn%'
or lower(a.city) like 'gurg%'
or lower(a.city) like 'vija%');


insert into GAIN_THEORY.IN0332_Temp
select 
    distinct 'IN' as market
    , provider
	, case when lower(a.city) like 'hyder%' then 'Hyderabad'
when lower(a.city) like 'hydra%' then 'Hyderabad'
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
when lower(a.city) like 'ahmed%' then 'Ahmedabad'
when lower(a.city) like 'ahmad%' then 'Ahmedabad'
when lower(a.city) like 'ahmd%' then 'Ahmedabad'
when lower(a.city) like 'aham%' then 'Ahmedabad'
when lower(a.city) like 'ahem%' then 'Ahmedabad'
when lower(a.city) in ('lacknou'
,'lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw'
,'lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow'
,'locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow'
,'lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu'
,'lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno'
,'lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw'
,'laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow'
,'luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow'
,'lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow'
,'luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown'
,'lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau'
,'lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou'
,'lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown'
,'lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow'
,'lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow'
,'lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow'
,'lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw'
,'luknow','luncknow','lunknow') then 'Lucknow'
when lower(a.city) like 'jaip%' then 'Jaipur'
when lower(a.city) like 'chandi%' then 'Chandigarh'
when lower(a.city) like 'pat%' then 'Patna'
when lower(a.city) like 'patn%' then 'Patna'
when lower(a.city) like 'gurg%' then 'Gurgaon'
when lower(a.city) like 'vija%' then 'Vijayawada'
end as city
	,'90' confidence
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'H2H' as provider, best_mobile_number_hash ,city from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,city from PRM.h2h_transaction
union select distinct 'BB' as provider,best_mobile_number_hash,city from PRM.bb_registration
union select distinct 'LK' as provider,best_mobile_number_hash,city from PRM.lk_customer
union select distinct 'LK' as provider,best_mobile_number_hash,city from PRM.lk_customer_pti748
union select distinct 'PI' as provider,best_mobile_number_hash,city from PRM.pi_consumer) as a
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90')
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' 
or lower(a.city) like 'ahmed%' 
or lower(a.city) like 'ahmad%' 
or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' 
or lower(a.city) like 'ahem%' 
or lower(a.city) in ('lacknou'
,'lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw'
,'lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow'
,'locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow'
,'lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu'
,'lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno'
,'lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw'
,'laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow'
,'luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow'
,'lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow'
,'luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown'
,'lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau'
,'lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou'
,'lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown'
,'lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow'
,'lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow'
,'lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow'
,'lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw'
,'luknow','luncknow','lunknow') 
or lower(a.city) like 'jaip%'
or lower(a.city) like 'chandi%'
or lower(a.city) like 'pat%'
or lower(a.city) like 'patn%'
or lower(a.city) like 'gurg%'
or lower(a.city) like 'vija%');


insert into GAIN_THEORY.IN0332_Temp
select 
    distinct 'IN' as market
    , provider
	, b.city
	,'60' confidence
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (--bt
select distinct 'BT' as provider,best_mobile_number_hash from PRM.bt_entry
--dl
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dl197_transaction
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dloz_tier3
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dlts_transaction
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dlzd_transaction
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.mgage_tier3
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.imimobile_tier3
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dl_all_campaigns) a
inner join GAIN_THEORY.IN0332_Temp_City_mobile_mapped b
on a.best_mobile_number_hash = b.mobileno
where a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

insert into GAIN_THEORY.IN0332_Temp
select 
    distinct 'IN' as market
    , provider
	, b.city
	,'90' confidence
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
--bt
select distinct 'BT' as provider,best_mobile_number_hash from PRM.bt_entry 
--dl
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dl197_transaction
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dloz_tier3
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dlts_transaction
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dlzd_transaction
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.mgage_tier3
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.imimobile_tier3
union select distinct 'DL' as provider,best_mobile_number_hash from PRM.dl_all_campaigns) as a
inner join GAIN_THEORY.IN0332_Temp_City_mobile_mapped  b
on a.best_mobile_number_hash  = b.mobileno
where a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');











------extract 


--MO_HA_India360_IN0332LSM7+Confidence_20161118_NanditaGodbole

--1
select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Ahmedabad'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Ahmedabad'
and confidence = '90';

--2

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Chandigarh'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Chandigarh'
and confidence = '90';

--3

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Chennai'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Chennai'
and confidence = '90';

--4

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Delhi'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Delhi'
and confidence = '90';

--5

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Gurgaon'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Gurgaon'
and confidence = '90';

--6
select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Hyderabad'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Hyderabad'
and confidence = '90';

--7

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Jaipur'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Jaipur'
and confidence = '90';

--8

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Kolkata'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Kolkata'
and confidence = '90';

--9

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Lucknow'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Lucknow'
and confidence = '90';

--10

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Mumbai'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Mumbai'
and confidence = '90';


--11
select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Patna'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Patna'
and confidence = '90';

--12

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Pune'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Pune'
and confidence = '90';

--13

select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Vijayawada'
and confidence = '60';


select distinct market 
,provider  
,mobileno 
,optin_hierarchy_level 
,optin_hierarchy_value 
from GAIN_THEORY.IN0332_Temp
where city = 'Vijayawada'
and confidence = '90';



