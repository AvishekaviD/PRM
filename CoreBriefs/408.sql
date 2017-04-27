--voucher codes
 
 

 
select 'All Voucher Entries',campaign_id,b.region,count(distinct voucher_code) from PRM.bt_entry a 
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 where campaign_id in ('2195','2213','2528','2632')
 and voucher_code <> '' and voucher_code is not null and voucher_code <> 'null'
 group by campaign_id,b.region
 order by campaign_id,b.region;
 
 select 'Valid Voucher',campaign_id,b.region,count(distinct voucher_code) from PRM.bt_entry a
 inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 where campaign_id in ('2195','2213','2528','2632')
 and voucher_code <> '' and voucher_code is not null and voucher_code <> 'null'
 and ((entry_status= 0 AND error_code= 0) 
 OR (entry_status= -1 AND error_code= -9) 
 OR (entry_status= 0 and error_code= -15))
 group by campaign_id,b.region
 order by campaign_id,b.region;
 
 --
 
 select count(distinct voucher_code) counts
from GAIN_THEORY.BT_Bru_VoucherCodes ;

select a.campaign_id,b.campaign_name, count(distinct a.voucher_code) counts
from PRM.bt_entry a inner join PRM.bt_campaign b
on a.campaign_id = b.campaign_id
where a.voucher_code in (select distinct voucher_code from GAIN_THEORY.BT_Bru_VoucherCodes)
group by 1,2;

select min(entry_date) from PRM.bt_entry where length(voucher_code) > 0;

select distinct campaign_id, campaign_name,campaign_start_date, campaign_end_date
from PRM.bt_campaign
where campaign_id in ('2630','2626','2120','2120','2195','2551','2528','2517');