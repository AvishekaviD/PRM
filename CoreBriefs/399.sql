select region,lsm,confidence,count(distinct mobile_number) counts
from GAIN_THEORY.PRMDashboard_data
where (lower(region) like '%bihar%' or lower(region) like '%uttar%' 
or lower(region) like '%rajas%' or lower(region) like '%delhi%')
and ((lsm = '7+' and confidence = '30') or (lsm = '4-7'))
group by 1,2,3
order by 1,2,3;



 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%bihar%'
and (lsm = '7+' and confidence = '30');


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%delhi%'
and (lsm = '7+' and confidence = '30');


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%delhi%'
and lsm = '4-7';


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%rajas%'
and (lsm = '7+' and confidence = '30');


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%uttar%west%' 
and (lsm = '7+' and confidence = '30');


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%uttar%west%' 
and lsm = '4-7';


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%uttar%east%' 
and (lsm = '7+' and confidence = '30');


 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%uttar%east%' 
and lsm = '4-7';



 select 
    distinct 'IN' as market
    ,provider
	, mobile_number as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where (lower(city) like '%meer%' 
or lower(city) like '%muz%nag%' 
or lower(city) like '%ghazi%' 
or lower(city) like '%budh%' 
or lower(city) like '%bula%' 
or lower(city) like '%baghp%' 
or lower(city) like 'hapur%' 
or lower(city) like '%fari%' 
or lower(city) like '%gurg%'
or lower(city) like '%mahen%' 
or lower(city) like '%bhiw%' 
or lower(city) like '%nuh%' 
or lower(city) like '%roht%' 
or lower(city) like '%soni%' 
or lower(city) like '%rewar%' 
or lower(city) like '%jhaj%' 
or lower(city) like '%panip%' 
or lower(city) like '%palw%' 
or lower(city) like '%jind%' 
or lower(city) like '%karnal%' 
or lower(city) like '%alwa%' 
or lower(city) like '%bharat%' 
or lower(city) like '%nct%' )
and ((lsm = '7+' and confidence = '30') or (lsm = '4-7'));

