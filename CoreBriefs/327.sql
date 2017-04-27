-- kkt 
select 'KKT' as Provider,'KKT' as Brand,'Uttar Pradesh' region,
case when option_provided = 1 then 'Male'
when option_provided = 2 then 'Female'
else 'others' end as gender,count(distinct best_mobile_number_hash ) from (
select region_lookup_number,best_mobile_number_hash,contest_file_id,option_provided from PRM.kkt_cdr_contest_trans_ST
union select region_lookup_number,best_mobile_number_hash,contest_file_id,option_provided from PRM.kkt_cdrl_contest) as a  
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where lower(region) like '%uttar%'
and contest_file_id = 9
group by gender


--
select '0-3' lsm
,case
when lower(a.brand) like '%rin%' then 'rin'
when lower(a.brand) like '%clinic%plu%' then 'Clinic Plus'
when lower(a.brand) like '%wheel%' then 'Wheel' 
When lower(a.brand) like '%lifeb%' then 'Lifebuoy' 
When lower(a.brand) like '%lb%' then 'Lifebuoy' 
when lower(a.brand) like '%lux%' then 'Lux' 
when lower(a.brand) like 'f&l%' then 'FAL'
when lower(a.brand) like 'fal%' then 'FAL'
when lower(a.brand) like 'fl%' then 'FAL'
when lower(a.brand) like '%fair%' then 'FAL'
when lower(a.brand) like '%fair%love%' then 'FAL'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like '%close%up%' then 'Close Up'
When lower(a.brand) like '%vim%' then 'Vim' 
When lower(a.brand) like '%taaza%' then 'Taaza' 
when lower(a.brand) like '%surf%' then 'Surf'
When lower(a.brand) like '%pe%soden%' then 'peopsodent' 
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like '%p^p%' then 'Pepsodent'
when lower(a.brand) like '%dove%' then 'Dove'
when lower(a.brand) like '%pears%' then 'Pears'
when lower(a.brand) like '%ponds%' then 'Ponds'
When lower(a.brand) like '%red%label%' then 'Red Label'
when lower(a.brand) like '%vasel%' then 'Vaseline'
when lower(a.brand) like '%taj%' then 'Taj Tea'
when lower(a.brand) like '%lipton%' then 'lipton'
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like '%coffee%' then 'Bru'
else 'others' end Brands
, count(distinct best_mobile_number_hash ) from (
--bt
select distinct a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number,cast(entry_date as date) date_created from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select 'Rin' as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_rincareeracademy_registration
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dloz_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlts_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlzd_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mgage_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.imimobile_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.thinkwalnut_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(entry_date as date) date_created from PRM.dl_all_campaigns
--h2h
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.h2h_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where (lower(b.region) like '%uttar%')
and (lower(a.brand) like '%rin%'  
or lower(a.brand) like '%clinic%plu%'  
or lower(a.brand) like '%wheel%'   
or lower(a.brand) like '%lifeb%'   
or lower(a.brand) like '%lb%'  
or lower(a.brand) like '%lux%' 
or lower(a.brand) like 'f&l%' 
or lower(a.brand) like 'fal%'  
or lower(a.brand) like 'fl%'  
or lower(a.brand) like '%fair%'  
or lower(a.brand) like '%fair%love%'  
or lower(a.brand) like 'sunsil%'  
or lower(a.brand) like '%close%up%'  
or lower(a.brand) like '%vim%'  
or lower(a.brand) like '%taaza%'  
or lower(a.brand) like '%surf%'  
or lower(a.brand) like '%pe%soden%'  
or lower(a.brand) like 'pep%'  
or lower(a.brand) like '%p^p%'  
or lower(a.brand) like '%dove%'  
or lower(a.brand) like '%pears%'  
or lower(a.brand) like '%ponds%'  
or lower(a.brand) like '%red%label%'  
or lower(a.brand) like '%vasel%' 
or lower(a.brand) like '%taj%' 
or lower(a.brand) like '%lipton%'  
or lower(a.brand) like '%bru%'  
or lower(a.brand) like '%coffee%' )
and best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3' and LSM3_CombinedSourceSKU.finalconfidence = '60')
group by brands, region
union 
select '4-7' lsm
,case
when lower(a.brand) like '%rin%' then 'rin'
when lower(a.brand) like '%clinic%plu%' then 'Clinic Plus'
when lower(a.brand) like '%wheel%' then 'Wheel' 
When lower(a.brand) like '%lifeb%' then 'Lifebuoy' 
When lower(a.brand) like '%lb%' then 'Lifebuoy' 
when lower(a.brand) like '%lux%' then 'Lux' 
when lower(a.brand) like 'f&l%' then 'FAL'
when lower(a.brand) like 'fal%' then 'FAL'
when lower(a.brand) like 'fl%' then 'FAL'
when lower(a.brand) like '%fair%' then 'FAL'
when lower(a.brand) like '%fair%love%' then 'FAL'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like '%close%up%' then 'Close Up'
When lower(a.brand) like '%vim%' then 'Vim' 
When lower(a.brand) like '%taaza%' then 'Taaza' 
when lower(a.brand) like '%surf%' then 'Surf'
When lower(a.brand) like '%pe%soden%' then 'peopsodent' 
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like '%p^p%' then 'Pepsodent'
when lower(a.brand) like '%dove%' then 'Dove'
when lower(a.brand) like '%pears%' then 'Pears'
when lower(a.brand) like '%ponds%' then 'Ponds'
When lower(a.brand) like '%red%label%' then 'Red Label'
when lower(a.brand) like '%vasel%' then 'Vaseline'
when lower(a.brand) like '%taj%' then 'Taj Tea'
when lower(a.brand) like '%lipton%' then 'lipton'
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like '%coffee%' then 'Bru'
else 'others' end Brands
, count(distinct best_mobile_number_hash ) from (
--bt
select distinct a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number,cast(entry_date as date) date_created from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select 'Rin' as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_rincareeracademy_registration
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dloz_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlts_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlzd_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mgage_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.imimobile_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.thinkwalnut_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(entry_date as date) date_created from PRM.dl_all_campaigns
--h2h
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.h2h_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where (lower(b.region) like '%uttar%')
and (lower(a.brand) like '%rin%'  
or lower(a.brand) like '%clinic%plu%'  
or lower(a.brand) like '%wheel%'   
or lower(a.brand) like '%lifeb%'   
or lower(a.brand) like '%lb%'  
or lower(a.brand) like '%lux%' 
or lower(a.brand) like 'f&l%' 
or lower(a.brand) like 'fal%'  
or lower(a.brand) like 'fl%'  
or lower(a.brand) like '%fair%'  
or lower(a.brand) like '%fair%love%'  
or lower(a.brand) like 'sunsil%'  
or lower(a.brand) like '%close%up%'  
or lower(a.brand) like '%vim%'  
or lower(a.brand) like '%taaza%'  
or lower(a.brand) like '%surf%'  
or lower(a.brand) like '%pe%soden%'  
or lower(a.brand) like 'pep%'  
or lower(a.brand) like '%p^p%'  
or lower(a.brand) like '%dove%'  
or lower(a.brand) like '%pears%'  
or lower(a.brand) like '%ponds%'  
or lower(a.brand) like '%red%label%'  
or lower(a.brand) like '%vasel%' 
or lower(a.brand) like '%taj%' 
or lower(a.brand) like '%lipton%'  
or lower(a.brand) like '%bru%'  
or lower(a.brand) like '%coffee%' )
and best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7' and LSM3_CombinedSourceSKU.finalconfidence = '60')
group by brands, region;


--recency split
select '0-3' lsm
,case
when lower(a.brand) like '%rin%' then 'rin'
when lower(a.brand) like '%clinic%plu%' then 'Clinic Plus'
when lower(a.brand) like '%wheel%' then 'Wheel' 
When lower(a.brand) like '%lifeb%' then 'Lifebuoy' 
When lower(a.brand) like '%lb%' then 'Lifebuoy' 
when lower(a.brand) like '%lux%' then 'Lux' 
when lower(a.brand) like 'f&l%' then 'FAL'
when lower(a.brand) like 'fal%' then 'FAL'
when lower(a.brand) like 'fl%' then 'FAL'
when lower(a.brand) like '%fair%' then 'FAL'
when lower(a.brand) like '%fair%love%' then 'FAL'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like '%close%up%' then 'Close Up'
When lower(a.brand) like '%vim%' then 'Vim' 
When lower(a.brand) like '%taaza%' then 'Taaza' 
when lower(a.brand) like '%surf%' then 'Surf'
When lower(a.brand) like '%pe%soden%' then 'peopsodent' 
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like '%p^p%' then 'Pepsodent'
when lower(a.brand) like '%dove%' then 'Dove'
when lower(a.brand) like '%pears%' then 'Pears'
when lower(a.brand) like '%ponds%' then 'Ponds'
When lower(a.brand) like '%red%label%' then 'Red Label'
when lower(a.brand) like '%vasel%' then 'Vaseline'
when lower(a.brand) like '%taj%' then 'Taj Tea'
when lower(a.brand) like '%lipton%' then 'lipton'
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like '%coffee%' then 'Bru'
else 'others' end Brands,case when (current_date - a.date_created)  month(4) <= 6 then '6 months'
else '6-12 months' end as recency
, count(distinct best_mobile_number_hash ) from (
--bt
select distinct a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number,cast(entry_date as date) date_created from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select 'Rin' as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_rincareeracademy_registration
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dloz_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlts_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlzd_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mgage_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.imimobile_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.thinkwalnut_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(entry_date as date) date_created from PRM.dl_all_campaigns
--h2h
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.h2h_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where (lower(b.region) like '%uttar%')
and (lower(a.brand) like '%rin%'  
or lower(a.brand) like '%clinic%plu%'  
or lower(a.brand) like '%wheel%'   
or lower(a.brand) like '%lifeb%'   
or lower(a.brand) like '%lb%'  
or lower(a.brand) like '%lux%' 
or lower(a.brand) like 'f&l%' 
or lower(a.brand) like 'fal%'  
or lower(a.brand) like 'fl%'  
or lower(a.brand) like '%fair%'  
or lower(a.brand) like '%fair%love%'  
or lower(a.brand) like 'sunsil%'  
or lower(a.brand) like '%close%up%'  
or lower(a.brand) like '%vim%'  
or lower(a.brand) like '%taaza%'  
or lower(a.brand) like '%surf%'  
or lower(a.brand) like '%pe%soden%'  
or lower(a.brand) like 'pep%'  
or lower(a.brand) like '%p^p%'  
or lower(a.brand) like '%dove%'  
or lower(a.brand) like '%pears%'  
or lower(a.brand) like '%ponds%'  
or lower(a.brand) like '%red%label%'  
or lower(a.brand) like '%vasel%' 
or lower(a.brand) like '%taj%' 
or lower(a.brand) like '%lipton%'  
or lower(a.brand) like '%bru%'  
or lower(a.brand) like '%coffee%' )
and best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '0-3' and LSM3_CombinedSourceSKU.finalconfidence in ('30','60','90'))
and extract(year from a.date_created) between '2000' and '2016'
group by brands, region,recency
union 
select '4-7' lsm
,case
when lower(a.brand) like '%rin%' then 'rin'
when lower(a.brand) like '%clinic%plu%' then 'Clinic Plus'
when lower(a.brand) like '%wheel%' then 'Wheel' 
When lower(a.brand) like '%lifeb%' then 'Lifebuoy' 
When lower(a.brand) like '%lb%' then 'Lifebuoy' 
when lower(a.brand) like '%lux%' then 'Lux' 
when lower(a.brand) like 'f&l%' then 'FAL'
when lower(a.brand) like 'fal%' then 'FAL'
when lower(a.brand) like 'fl%' then 'FAL'
when lower(a.brand) like '%fair%' then 'FAL'
when lower(a.brand) like '%fair%love%' then 'FAL'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like '%close%up%' then 'Close Up'
When lower(a.brand) like '%vim%' then 'Vim' 
When lower(a.brand) like '%taaza%' then 'Taaza' 
when lower(a.brand) like '%surf%' then 'Surf'
When lower(a.brand) like '%pe%soden%' then 'peopsodent' 
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like '%p^p%' then 'Pepsodent'
when lower(a.brand) like '%dove%' then 'Dove'
when lower(a.brand) like '%pears%' then 'Pears'
when lower(a.brand) like '%ponds%' then 'Ponds'
When lower(a.brand) like '%red%label%' then 'Red Label'
when lower(a.brand) like '%vasel%' then 'Vaseline'
when lower(a.brand) like '%taj%' then 'Taj Tea'
when lower(a.brand) like '%lipton%' then 'lipton'
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like '%coffee%' then 'Bru'
else 'others' end Brands,case when (current_date - a.date_created) month(4) <= 6 then '6 months'
else '6-12 months' end as recency
, count(distinct best_mobile_number_hash ) from (
--bt
select distinct a.campaign_brand as brand,b.best_mobile_number_hash,b.region_lookup_number,cast(entry_date as date) date_created from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
--dl
union select 'Rin' as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_rincareeracademy_registration
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dl197_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dloz_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlts_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.dlzd_transaction
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mgage_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.imimobile_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.thinkwalnut_tier3
union select brand_name as brand,best_mobile_number_hash,region_lookup_number,cast(entry_date as date) date_created from PRM.dl_all_campaigns
--h2h
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.h2h_transaction
union select brand,best_mobile_number_hash,region_lookup_number,cast(date_created as date) date_created from PRM.mindtree_data) as a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where (lower(b.region) like '%uttar%')
and (lower(a.brand) like '%rin%'  
or lower(a.brand) like '%clinic%plu%'  
or lower(a.brand) like '%wheel%'   
or lower(a.brand) like '%lifeb%'   
or lower(a.brand) like '%lb%'  
or lower(a.brand) like '%lux%' 
or lower(a.brand) like 'f&l%' 
or lower(a.brand) like 'fal%'  
or lower(a.brand) like 'fl%'  
or lower(a.brand) like '%fair%'  
or lower(a.brand) like '%fair%love%'  
or lower(a.brand) like 'sunsil%'  
or lower(a.brand) like '%close%up%'  
or lower(a.brand) like '%vim%'  
or lower(a.brand) like '%taaza%'  
or lower(a.brand) like '%surf%'  
or lower(a.brand) like '%pe%soden%'  
or lower(a.brand) like 'pep%'  
or lower(a.brand) like '%p^p%'  
or lower(a.brand) like '%dove%'  
or lower(a.brand) like '%pears%'  
or lower(a.brand) like '%ponds%'  
or lower(a.brand) like '%red%label%'  
or lower(a.brand) like '%vasel%' 
or lower(a.brand) like '%taj%' 
or lower(a.brand) like '%lipton%'  
or lower(a.brand) like '%bru%'  
or lower(a.brand) like '%coffee%' )
and best_mobile_number_hash in (
select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '4-7' and LSM3_CombinedSourceSKU.finalconfidence in ('30','60'))
and extract(year from a.date_created) between '2000' and '2016'
group by brands, region,recency;