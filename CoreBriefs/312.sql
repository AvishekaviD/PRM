select distinct campaign_name from PRM.bt_campaign
where lower(bt_campaign.campaign_name) like '%trader%';

select 
case 
when lower(ref_mobile_lookup.region) like 'tamil%' then 'Tamilnadu'
when lower(ref_mobile_lookup.region) like 'chenn%' then 'Tamilnadu'
else ref_mobile_lookup.region end as Region
,count(distinct bt_entry.best_mobile_number_hash)
from PRM.bt_campaign inner join PRM.bt_entry
on bt_campaign.campaign_id = bt_entry.campaign_id
inner join PRM.ref_mobile_lookup on bt_entry.region_lookup_number = ref_mobile_lookup.lookup_prefix5
where lower(bt_campaign.campaign_name) like '%trader%' and
(lower(ref_mobile_lookup.region) like 'karna%'
or lower(ref_mobile_lookup.region) like 'ker%'
or lower(ref_mobile_lookup.region) like 'tamil%'
or lower(ref_mobile_lookup.region) like 'chenn%'
or lower(ref_mobile_lookup.region) like 'and%')
group by 1;

select case 
when lower(ref_mobile_lookup.region) like 'tamil%' then 'Tamilnadu'
when lower(ref_mobile_lookup.region) like 'chenn%' then 'Tamilnadu'
else ref_mobile_lookup.region end as Region
,count(distinct a.best_mobile_number_hash) from (
select distinct region_lookup_number,best_mobile_number_hash  from PRM.dl197_transaction where lower(campaign_name) like '%trader%' 
union select distinct region_lookup_number,best_mobile_number_hash from  PRM.dloz_tier3 where lower(campaign_name) like '%trader%' 
union select distinct region_lookup_number,best_mobile_number_hash from  PRM.imimobile_tier3 where lower(campaign_name) like '%trader%' 
union select distinct region_lookup_number,best_mobile_number_hash from  PRM.dlts_transaction where lower(campaign_name) like '%trader%' 
union select distinct region_lookup_number,best_mobile_number_hash from  PRM.dlzd_transaction where lower(campaign_name) like '%trader%' ) as a
inner join PRM.ref_mobile_lookup on a.region_lookup_number = ref_mobile_lookup.lookup_prefix5
where lower(ref_mobile_lookup.region) like 'karna%'
or lower(ref_mobile_lookup.region) like 'ker%'
or lower(ref_mobile_lookup.region) like 'tamil%'
or lower(ref_mobile_lookup.region) like 'chenn%'
or lower(ref_mobile_lookup.region) like 'and%'
group by 1;