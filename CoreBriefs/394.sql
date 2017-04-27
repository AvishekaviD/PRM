
--campaigns with Bru rs 5 sku

SELECT distinct "campaign_id", "campaign_name", "country_code"
, cast("campaign_start_date" as date)campaign_start_date
, cast("campaign_end_date" as date) campaign_end_date, "campaign_brand"
 FROM "PRM"."bt_campaign"
 where lower("campaign_brand") like '%bru%' 
 and lower(campaign_name) like '%5%' ;
 
 ----campaign id wise unique mobile count
 select a.campaign_id,c.region,count(distinct best_mobile_number_hash)
 from PRM.bt_entry a
inner join PRM.ref_mobile_lookup c on c.lookup_prefix5=a.region_lookup_number
 where a.campaign_id in ('2195','2213','2528','2632')
 group by a.campaign_id,c.region
 

 --voucher code condition 
 --((a.entry_status= 0 AND a.error_code= 0) OR (a.entry_status= -1 AND a.error_code= -9) OR (a.entry_status= 0 and a.error_code= -15))

  ----campaign id wise response
 select a.campaign_id,question_id,answer_id,c.region
 ,count(distinct best_mobile_number_hash)
 from PRM.bt_entry a
 inner join PRM.bt_response b on a.campaign_id=b.campaign_id
 inner join PRM.ref_mobile_lookup c on c.lookup_prefix5=a.region_lookup_number
 and a.entry_id=b.entry_id and a.profile_id=b.profile_id
 where a.campaign_id in ('2195','2213','2528','2632')
 group by a.campaign_id,question_id,answer_id,c.region
 
 
select campaign_id,question_id,question_text from  PRM.bt_question a
 where a.campaign_id in ('2195','2213','2528','2632')
 
 select campaign_id,answer_id,answer_text from  PRM.bt_answer a
 where a.campaign_id in ('2195','2213','2528','2632')
 
 
 
