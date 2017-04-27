--BNG

--bb
select 
    distinct 'IN' as market
    , 'BB' as provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (current_timestamp - a.date_created) day(4) < 180

union 

--pi
select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and lower(device_category) like '%mar%'
and (current_timestamp - a.date_created) day(4) < 180


union 

--lk
select 
    distinct 'IN' as market
    , 'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (current_timestamp - a.date_created) day(4) < 180

union 

--dl
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%')
and (current_timestamp - a.date_created) day(4) < 180;


--BNG > 6 months

--bb
select 
    distinct 'IN' as market
    , 'BB' as provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (current_timestamp - a.date_created) day(4) > 180

union 

--pi
select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and lower(device_category) like '%mar%'
and (current_timestamp - a.date_created) day(4) > 180


union 

--lk
select 
    distinct 'IN' as market
    , 'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (current_timestamp - a.date_created) day(4) > 180

union 

--dl
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%')
and (current_timestamp - a.date_created) day(4) > 180;






--************************************************************************************mumbai


--bb
select 
    distinct 'IN' as market
    , 'BB' as provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Mumbai')
and (current_timestamp - a.date_created) day(4) < 180

union 

--pi
select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and lower(device_category) like '%mar%'
and (current_timestamp - a.date_created) day(4) < 180


union 

--lk
select 
    distinct 'IN' as market
    , 'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Mumbai')
and (current_timestamp - a.date_created) day(4) < 180

union 

--dl
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%')
and (current_timestamp - a.date_created) day(4) < 180;


--MUMBAI > 6 months

--bb
select 
    distinct 'IN' as market
    , 'BB' as provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Mumbai')
and (current_timestamp - a.date_created) day(4) > 180

union 

--pi
select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and lower(device_category) like '%mar%'
and (current_timestamp - a.date_created) day(4) > 180


union 

--lk
select 
    distinct 'IN' as market
    , 'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (current_timestamp - a.date_created) day(4) > 180

union 

--dl
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Mumbai')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%')
and (current_timestamp - a.date_created) day(4) > 180;










--*******************************************************************************Delhi

--bb
select 
    distinct 'IN' as market
    , 'BB' as provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Delhi')
and (current_timestamp - a.date_created) day(4) < 180

union 

--pi
select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and lower(device_category) like '%mar%'
and (current_timestamp - a.date_created) day(4) < 180


union 

--lk
select 
    distinct 'IN' as market
    , 'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Delhi')
and (current_timestamp - a.date_created) day(4) < 180

union 

--dl
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%')
and (current_timestamp - a.date_created) day(4) < 180;


--Delhi > 6 months

--bb
select 
    distinct 'IN' as market
    , 'BB' as provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Delhi')
and (current_timestamp - a.date_created) day(4) > 180

union 

--pi
select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.pi_consumer   a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and lower(device_category) like '%mar%'
and (current_timestamp - a.date_created) day(4) > 180


union 

--lk
select 
    distinct 'IN' as market
    , 'LK' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,city,region_lookup_number,date_created from PRM.lk_customer
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction
union select distinct best_mobile_number_hash,'' city,region_lookup_number,date_created from PRM.lk_transaction_all_years
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (current_timestamp - a.date_created) day(4) > 180

union 

--dl
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,CAST(date_of_interaction AS TIMESTAMP(0)) date_created,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,cast(cast(date_created as date) as timestamp(0)) date_created,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Delhi')
and (lower(brand_name) like '%surf%' or lower(brand_name) like 'comfor%'or lower(brand_name) like 'dove%' 
or lower(brand_name) like 'bru%' or lower(brand_name) like 'coffee%' or lower(brand_name) like 'close%' 
or lower(brand_name) like 'domex%'or lower(brand_name) like 'doemx%' or lower(brand_name) like 'dmx%' 
or lower(brand_name) like 'kissan%' or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like 'knor%' or lower(brand_name) like 'pear%' or lower(brand_name) like 'pond%' 
or lower(brand_name) like '%vim%' or lower(brand_name) like 'sunsil%' or lower(brand_name) like 'vasel%' 
or lower(brand_name) like '%rose%' or lower(brand_name) like '%wheel%' or lower(brand_name) like '%sunli%')
and (current_timestamp - a.date_created) day(4) > 180;








