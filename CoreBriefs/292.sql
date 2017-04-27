--MO_HA_ _IN0292 _20160929_Parnil Sarin


select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'kolka%';


select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer a 
where (lower(city) like 'bangalu%'
or lower(city) like 'bangalo%'
or lower(city) like 'banagal%'
or lower(city) like 'bengalu%'
or lower(city) like 'bangalo%'
or lower(city) like 'bangl%' 
or lower(city) like 'bengl%' 
or lower(city) like 'bango%' 
or lower(city) like 'bangu%' 
or lower(city) like 'blr%' 
or lower(city) like 'bnag%' 
or lower(city) like 'blore%' );
