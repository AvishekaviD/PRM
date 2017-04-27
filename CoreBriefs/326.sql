--MO_HA_Thinkwalnut_IN0326_20161109_BhaktiShah

--MO_HA_Thinkwalnut_IN0326_20161109_BhaktiShah

--andra
select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from(
--bt
select distinct 'BT' as provider,a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select distinct 'DL' as provider,'Rin' as brand,best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
--h2h
union select distinct 'H2H' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'H2H' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and (lower(a.brand) like '%clinic%plu%' or
lower(a.brand) like '%close%up%' or 
lower(a.brand) like '%wheel%')
and lower(b.region) like '%and%' ;

--karnataka
select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from(
--bt
select distinct 'BT' as provider,a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select distinct 'DL' as provider,'Rin' as brand,best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
--h2h
union select distinct 'H2H' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'H2H' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and (lower(a.brand) like '%clinic%plu%' or
lower(a.brand) like '%close%up%' or 
lower(a.brand) like '%wheel%')
and lower(b.region) like '%karn%' ;

--tamil nadu
select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value 
from(
--bt
select distinct 'BT' as provider,a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select distinct 'DL' as provider,'Rin' as brand,best_mobile_number_hash,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' as provider,brand_name as brand,best_mobile_number_hash,region_lookup_number from PRM.dl_all_campaigns
--h2h
union select distinct 'H2H' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union select distinct 'H2H' as provider,brand,best_mobile_number_hash,region_lookup_number from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and (lower(a.brand) like '%clinic%plu%' or
lower(a.brand) like '%close%up%' or 
lower(a.brand) like '%wheel%')
and (lower(b.region) like '%tamil%' 
or lower(b.region) like '%chenn%' );