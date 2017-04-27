select provider,lsm,'TamilNadu' region,consumer,
case when current_date - lastinetractiondate <= 365 then '0-1 Year'
when current_date - lastinetractiondate > 365 and current_date - lastinetractiondate <= 1095 then '1-3 year'
else 'More than 3 Year' end Recency,count(distinct mobile_number) MobileCounts
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%tamil%' or  lower(region) like '%chenn%'
group by 1,2,3,4,5;


select provider,lsm,'TamilNadu' region,consumer,
case when current_date - lastinetractiondate <= 365 then '0-1 Year'
when current_date - lastinetractiondate > 365 and current_date - lastinetractiondate <= 1095 then '1-3 year'
else 'More than 3 Year' end Recency,count(distinct email) MobileCounts
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%tamil%' or  lower(region) like '%chenn%'
group by 1,2,3,4,5;

  select count(distinct [user_name]) from [Unilever_CampaignDashboard].[dbo].[SVOC_microsoft_twitter_user_data] a
  inner join [Unilever_CampaignDashboard].[dbo].[tbl_Master_MobileCircleMapping] b
  on a.[region_lookup_number] = cast(b.[lookup_prefix5] as varchar(10))
  where lower(b.region) like '%tamil%' or lower(b.region) like '%tamil%';


    select count(distinct [user_name]) from [Unilever_CampaignDashboard].[dbo].[SVOC_export2016-10-05] a
  inner join [Unilever_CampaignDashboard].[dbo].[tbl_Master_MobileCircleMapping] b
  on a.[prm_region_lookup_number] = cast(b.[lookup_prefix5] as varchar(10))
  where lower(b.region) like '%tamil%' or lower(b.region) like '%tamil%';


  select count(distinct [user_name]) from [Unilever_CampaignDashboard].[dbo].[SVOC_export] a
  inner join [Unilever_CampaignDashboard].[dbo].[tbl_Master_MobileCircleMapping] b
  on a.[prm_region_lookup_number] = cast(b.[lookup_prefix5] as varchar(10))
  where lower(b.region) like '%tamil%' or lower(b.region) like '%tamil%';
  
select count(distinct mobile_number) MobileCounts
from GAIN_THEORY.PRMDashboard_data
where provider  = 'H2H' 
and lsm in ('0-3','4-7','7+')
and length(pincode) > 8
and (lower(region) like '%tamil%' or  lower(region) like '%chenn%')
;

select count(distinct pincode) LatLongCounts
from GAIN_THEORY.PRMDashboard_data
where provider  = 'H2H' 
and lsm in ('0-3','4-7','7+')
and length(pincode) > 8
and (lower(region) like '%tamil%' or  lower(region) like '%chenn%')
;
  
  
select count(distinct latitude||' '||longitude) from (
select distinct latitude,longitude,b.region,best_mobile_number_hash from PRM.h2h_transaction a 
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where length(latitude) > 8 and length(longitude) > 8 and (lower(b.region) like '%tamil%' or  lower(b.region) like '%chenn%')
union all select distinct latitude,longitude,b.region,best_mobile_number_hash from PRM.mindtree_data a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where length(latitude) > 8 and length(longitude) > 8 and (lower(b.region) like '%tamil%' or  lower(b.region) like '%chenn%')
) a 
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU
where FinalLSM in ('0-3','4-7','7+'));


select count(distinct best_mobile_number_hash) from (
select distinct latitude,longitude,b.region,best_mobile_number_hash from PRM.h2h_transaction a 
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where length(latitude) > 8 and length(longitude) > 8 and (lower(b.region) like '%tamil%' or  lower(b.region) like '%chenn%')
union all select distinct latitude,longitude,b.region,best_mobile_number_hash from PRM.mindtree_data a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where length(latitude) > 8 and length(longitude) > 8 and (lower(b.region) like '%tamil%' or  lower(b.region) like '%chenn%')
) a 
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU
where FinalLSM in ('0-3','4-7','7+'));