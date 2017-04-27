--MO_HA_India360_IN0373MumbaiDLLSM4-7_20170208_NanditaGodbole
 
select 
    distinct 'IN' as market
    ,Updatedsource provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash
from LSM3_CombinedSourceSKU_20170206 where FinalLSM in('4-7','') )
and lower(b.region) like '%mumb%'
;

--MO_HA_India360_IN0373MumbaiDLLSM7+_20170208_NanditaGodbole
 select 
    distinct 'IN' as market
    ,Updatedsource provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where Updatedsource = 'DL'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash
from LSM3_CombinedSourceSKU_20170206 where FinalLSM = '7+')
and lower(b.region) like '%mumb%';