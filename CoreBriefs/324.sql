--MO_HA_India360_IN0324_20161125_EdsilCoutinho

create table IN0324_Temp
(
market varchar(10)
,provider varchar(10)
,city varchar(100)
,confidence varchar(10)
,mobileno varchar(500)
,optin_hierarchy_level varchar(10)
,optin_hierarchy_value varchar(100)
);


insert into GAIN_THEORY.IN0332_Temp_City_mobile_mapped
select best_mobile_number_hash as mobileno,'Bengaluru' city
from (
select distinct best_mobile_number_hash ,city from PRM.mindtree_data
union select distinct best_mobile_number_hash,city from PRM.h2h_transaction
union select distinct best_mobile_number_hash,city from PRM.bb_registration
union select distinct best_mobile_number_hash,city from PRM.lk_customer
union select distinct best_mobile_number_hash,city from PRM.lk_customer_pti748
union select distinct best_mobile_number_hash,city from PRM.pi_consumer) as a
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
or lower(a.city) like 'blore%' );



select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'delh%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'delh%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'delh%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


--kolkata

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'kolka%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'kolka%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'kolka%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');

--mumbai

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'mum%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'mum%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like 'mum%'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


--bengaluru

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join GAIN_THEORY.IN0332_Temp_City_mobile_mapped b
on a.best_mobile_number_hash = b.mobileno
where b.city = 'Bengaluru'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join GAIN_THEORY.IN0332_Temp_City_mobile_mapped b
on a.best_mobile_number_hash = b.mobileno
where b.city = 'Bengaluru'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    , provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from ( select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data
union select distinct 'H2H' as provider,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider, best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'PI' as provider, best_mobile_number_hash,region_lookup_number from PRM.pi_consumer
) a inner join GAIN_THEORY.IN0332_Temp_City_mobile_mapped b
on a.best_mobile_number_hash = b.mobileno
where b.city = 'Bengaluru'
and a.best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');




