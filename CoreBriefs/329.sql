--**************************************************************************************************************************************
--4-7  MO_HA_Ozonetel_IN0329LSM4to7_20161115_SunitaSandhu
--**************************************************************************************************************************************

select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7')
and lower(b.region) like '%uttar%'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;

select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7')
and lower(b.region) like '%bihar%'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;



select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7')
and lower(b.region) like '%chhat%' 
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7')
and lower(b.region) like '%raja%'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;



select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7')
and lower(b.region) like '%maha%' and b.region <> 'Mumbai'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;

--**************************************************************************************************************************************
--0-3  MO_HA_Ozonetel_IN0329LSM0to3_20161115_SunitaSandhu
--**************************************************************************************************************************************
select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and lower(b.region) like '%uttar%'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;

select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and lower(b.region) like '%bihar%'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;



select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and lower(b.region) like '%chhat%' 
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and lower(b.region) like '%raja%'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;



select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct 'DL' provider,best_mobile_number_hash,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct 'DL' provider,best_mobile_number_hash,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.mindtree_data
union select distinct 'DL' provider,best_mobile_number_hash,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct 'DL' provider,best_mobile_number_hash,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3')
and lower(b.region) like '%maha%' and b.region <> 'Mumbai'
and (lower(a.brand_name) like '%3%rose%' or lower(a.brand_name) like '%bru%' or lower(a.brand_name) like '%clinic%plu%' 
or lower(a.brand_name) like '%clear%' or lower(a.brand_name) like '%close%up%' or lower(a.brand_name) like '%comfort%' 
or lower(a.brand_name) like '%cornetto%' or lower(a.brand_name) like '%domex%' or lower(a.brand_name) like '%dove%' 
or lower(a.brand_name) like '%fal%' or lower(a.brand_name) like '%fair%love%' or lower(a.brand_name) like '%kissan%' 
or lower(a.brand_name) like '%knorr%' or lower(a.brand_name) like '%magnum%' or lower(a.brand_name) like '%lifeb%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%lux%' or lower(a.brand_name) like '%pears%' 
or lower(a.brand_name) like '%ponds%' or lower(a.brand_name) like '%pe%soden%' or lower(a.brand_name) like '%red%label%' 
or lower(a.brand_name) like '%rin%' or lower(a.brand_name) like '%sunlight%' or lower(a.brand_name) like '%sunsilk%' 
or lower(a.brand_name) like '%surf%' or lower(a.brand_name) like '%taaza%' or lower(a.brand_name) like '%taj%' 
or lower(a.brand_name) like '%lipton%' or lower(a.brand_name) like '%vaseline%' or lower(a.brand_name) like '%vim%' )
;


