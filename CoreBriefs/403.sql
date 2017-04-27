select count(*) from PRM.bt_entry
where campaign_id = '2041';

select max(entry_date),min(entry_date) from PRM.bt_entry
where campaign_id = '2041';

select count(distinct best_mobile_number_hash) mobile_counts from PRM.bt_entry
where campaign_id = '2041'
;

select count(entry_id) voucher_counts from PRM.bt_entry
where campaign_id = '2041'
and ((entry_status = 0 AND error_code= 0)
OR (entry_status= -1 AND error_code= -9) 
OR (entry_status= 0 and error_code= -15));

select count(distinct best_mobile_number_hash) mobile_counts from PRM.bt_entry
where campaign_id = '2041'
and cast(entry_date as date) - cast('2013-10-14' as date)  < 30
;

select count(entry_id) voucher_counts from PRM.bt_entry
where campaign_id = '2041' and cast(entry_date as date) - cast('2013-10-14' as date)  < 30
and ((entry_status = 0 AND error_code= 0)
OR (entry_status= -1 AND error_code= -9) 
OR (entry_status= 0 and error_code= -15));



select campaign_id,count(distinct voucher_code) from PRM.bt_entry
where campaign_id in ('2551','2517','2626')
group by campaign_id;


select campaign_id,min(entry_date),count(distinct voucher_code) from PRM.bt_entry
where voucher_code is not null and voucher_code <> ''
group by campaign_id;

select distinct campaign_id,campaign_name 
from PRM.bt_campaign 
where campaign_id in ('2120','2136','2195','2500','2517','2528','2551','2626','2630','2632');

select distinct a.campaign_id,a.campaign_name
,cast(a.campaign_start_date as date) campaignStartDate,min(cast(b.entry_date as date)) FisrtInteractionDate
,count(b.voucher_code) from PRM.bt_campaign a inner join PRM.bt_entry b
on a.campaign_id = b.campaign_id 
where lower(a.campaign_name) like '%bru%'
--and voucher_code is not null and voucher_code <> ''
group by 1,2,3;

select distinct a.campaign_id,a.campaign_name
,cast(a.campaign_start_date as date) campaignStartDate,min(cast(b.entry_date as date)) FisrtInteractionDate
,count(b.voucher_code) from PRM.bt_campaign a inner join PRM.bt_entry b
on a.campaign_id = b.campaign_id 
where lower(a.campaign_name) like '%bru%'
and voucher_code is not null and voucher_code <> ''
group by 1,2,3;



select distinct campaign_id, campaign_name from PRM.bt_campaign
where campaign_id in ('2120','2136','2195','2500','2517','2528','2551','2626','2630','2632');
