--MO_HA__IN0323_20161109_

--------------------------------------------------------------------------------------
--BNG
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' )

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' )
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' )

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;





--------------------------------------------------------------------------------------
--HYD
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' )

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' )
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' )

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--PUNE
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--AHM
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'ahmed%' or lower(a.city) like 'ahmad%' or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' or lower(a.city) like 'ahem%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'ahmed%' or lower(a.city) like 'ahmad%' or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' or lower(a.city) like 'ahem%' )

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'ahmed%' or lower(a.city) like 'ahmad%' or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' or lower(a.city) like 'ahem%' )
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'ahmed%' or lower(a.city) like 'ahmad%' or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' or lower(a.city) like 'ahem%' )

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and (lower(a.city) like 'ahmed%' or lower(a.city) like 'ahmad%' or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' or lower(a.city) like 'ahem%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;



--------------------------------------------------------------------------------------
--Delhi
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Delhi')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Delhi')

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Delhi')
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Delhi')

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Delhi')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;



--------------------------------------------------------------------------------------
--b.region in ('Kolkata')
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Kolkata')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Kolkata')
union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Kolkata')
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Kolkata')
union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Kolkata')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--b.region in ('Mumbai')
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Mumbai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Mumbai')

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Mumbai')
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Mumbai')

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Mumbai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--b.region in ('Chennai')
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Chennai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Chennai')

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Chennai')
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Chennai')

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and b.region in ('Chennai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--Andhra
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'and%'
and ((lower(a.city) not like 'hyder%' 
or lower(a.city) not like 'hydra%' ))
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'and%'
and ((lower(a.city) not like 'hyder%' 
or lower(a.city) not like 'hydra%' ))
union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'and%'
and ((lower(a.city) not like 'hyder%' 
or lower(a.city) not like 'hydra%' ))
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'and%'
and ((lower(a.city) not like 'hyder%' 
or lower(a.city) not like 'hydra%' ))

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'and%'
and ((lower(a.city) not like 'hyder%' 
or lower(a.city) not like 'hydra%' ))
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--lower(b.region) like 'punja%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'punja%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'punja%'

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'punja%'
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'punja%'

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'punja%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--lower(b.region) like 'harya%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'harya%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'harya%'

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'harya%'
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'harya%'
union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'harya%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--lower(b.region) like 'karna%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'karna%'
and (lower(a.city) not like 'bangalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'banagal%' 
or lower(a.city) not like 'bengalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'bangl%' 
or lower(a.city) not like 'bengl%' or lower(a.city) not like 'bango%' or lower(a.city) not like 'bangu%' 
or lower(a.city) not like 'blr%' or lower(a.city) not like 'bnag%' or lower(a.city) not like 'blore%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'karna%'
and (lower(a.city) not like 'bangalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'banagal%' 
or lower(a.city) not like 'bengalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'bangl%' 
or lower(a.city) not like 'bengl%' or lower(a.city) not like 'bango%' or lower(a.city) not like 'bangu%' 
or lower(a.city) not like 'blr%' or lower(a.city) not like 'bnag%' or lower(a.city) not like 'blore%' )

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and  lower(b.region) like 'karna%'
and (lower(a.city) not like 'bangalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'banagal%' 
or lower(a.city) not like 'bengalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'bangl%' 
or lower(a.city) not like 'bengl%' or lower(a.city) not like 'bango%' or lower(a.city) not like 'bangu%' 
or lower(a.city) not like 'blr%' or lower(a.city) not like 'bnag%' or lower(a.city) not like 'blore%' )
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and  lower(b.region) like 'karna%'
and (lower(a.city) not like 'bangalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'banagal%' 
or lower(a.city) not like 'bengalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'bangl%' 
or lower(a.city) not like 'bengl%' or lower(a.city) not like 'bango%' or lower(a.city) not like 'bangu%' 
or lower(a.city) not like 'blr%' or lower(a.city) not like 'bnag%' or lower(a.city) not like 'blore%' )

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'karna%'
and (lower(a.city) not like 'bangalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'banagal%' 
or lower(a.city) not like 'bengalu%' or lower(a.city) not like 'bangalo%' or lower(a.city) not like 'bangl%' 
or lower(a.city) not like 'bengl%' or lower(a.city) not like 'bango%' or lower(a.city) not like 'bangu%' 
or lower(a.city) not like 'blr%' or lower(a.city) not like 'bnag%' or lower(a.city) not like 'blore%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;



--------------------------------------------------------------------------------------
--lower(b.region) like 'keral%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'keral%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'keral%'

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'keral%'
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'keral%'

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'keral%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--lower(b.region) like 'tamil%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'tamil%'
and b.region not in ('Chennai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'tamil%'
and b.region not in ('Chennai')

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'tamil%'
and b.region not in ('Chennai')
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'tamil%'
and b.region not in ('Chennai')

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like 'tamil%'
and b.region not in ('Chennai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--lower(b.region) like '%uttar%east%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%east%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%east%'

union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%east%'
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%east%'
union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%east%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;




--------------------------------------------------------------------------------------
--lower(b.region) like '%uttar%west%'
--------------------------------------------------------------------------------------	
--h2h
select 
    distinct 'IN' as market
    ,'H2H' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%west%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

union 
--bb

select 
    distinct 'IN' as market
    , 'BB' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%west%'
union
--pi
select 
    distinct 'IN' as market
    ,'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%west%'
union
--lk
select 
    distinct 'IN' as market
    ,'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%west%'

union
--dl
select 
    distinct 'IN' as market
    ,'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
and lower(b.region) like '%uttar%west%'
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%'
or lower(brand_name) like 'axe%' or lower(brand_name) like 'clinic%' or lower(brand_name) like 'clear%'
or lower(brand_name) like '%all%cl%' or lower(brand_name) like 'f&l%' or lower(brand_name) like 'fal%' or lower(brand_name) like 'fl%' or lower(brand_name) like '%fair%love%'
or lower(brand_name) like '%lipton%' or lower(brand_name) like 'lux%' or lower(brand_name) like 'pep%' or lower(brand_name) like 'rin%'
or lower(brand_name) like '%taj%' or lower(brand_name) like '%taaz%' or lower(brand_name) like '%tazz%' or lower(brand_name) like '%red%l%')

;
