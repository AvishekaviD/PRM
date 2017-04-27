--MO_HA_IMImobile_IN0328City_20161106_DeepikaBudharani.csv
select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
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
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;



select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where ( lower(a.city) like 'hyder%' 
or lower(a.city) like 'hydra%' )
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'ahmed%' or lower(a.city) like 'ahmad%' or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' or lower(a.city) like 'ahem%' )
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (b.region in ('Delhi'))
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (b.region in ('Kolkata'))
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where ( b.region in ('Mumbai'))
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;




select 
    distinct 'IN' as market
    , provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (
 select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number,'H2H' as provider from PRM.h2h_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number,'DL' as provider from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number,'DL' as provider from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number,'DL' as provider from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number,'DL' as provider from PRM.dl_all_campaigns 
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number,'BT' as provider from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (b.region in ('Chennai'))
and (lower(a.brand_name) like '%3%rose%'
or lower(a.brand_name) like '%axe%'
or lower(a.brand_name) like '%bru%'
or lower(a.brand_name) like '%clinic%plu%'
or lower(a.brand_name) like '%clear%'
or lower(a.brand_name) like '%close%up%'
or lower(a.brand_name) like '%comfort%'
or lower(a.brand_name) like '%cornetto%'
or lower(a.brand_name) like '%domex%'
or lower(a.brand_name) like '%dove%'
or lower(a.brand_name) like '%fal%'
or lower(a.brand_name) like '%fair%love%'
or lower(a.brand_name) like '%kissan%'
or lower(a.brand_name) like '%knorr%'
or lower(a.brand_name) like '%liril%'
or lower(a.brand_name) like '%magnum%'
or lower(a.brand_name) like '%lifeb%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%lux%'
or lower(a.brand_name) like '%paddle&pop%'
or lower(a.brand_name) like '%pears%'
or lower(a.brand_name) like '%ponds%'
or lower(a.brand_name) like '%pe%soden%'
or lower(a.brand_name) like '%pep%'
or lower(a.brand_name) like '%p^p%'
or lower(a.brand_name) like '%red%label%'
or lower(a.brand_name) like '%rin%'
or lower(a.brand_name) like '%sunlight%'
or lower(a.brand_name) like '%sunsilk%'
or lower(a.brand_name) like '%surf%'
or lower(a.brand_name) like '%taaza%'
or lower(a.brand_name) like '%taj%'
or lower(a.brand_name) like '%lipton%'
or lower(a.brand_name) like '%vaseline%'
or lower(a.brand_name) like '%vim%'
or lower(a.brand_name) like '%wheel%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and LSM3_CombinedSourceSKU.finalconfidence in ('90','60'))
;



