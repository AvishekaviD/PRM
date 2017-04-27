-- inactive
 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Andhra Pradesh')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Andhra Pradesh')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Bihar and Jharkhand')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Bihar and Jharkhand')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Chennai','Tamilnadu')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Chennai','Tamilnadu')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Karnataka')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Karnataka')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Kerala')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Kerala')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Madhya Pradesh and Chhattisgarh')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Madhya Pradesh and Chhattisgarh')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Maharashtra','Mumbai')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Maharashtra','Mumbai')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Rajasthan')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Rajasthan')
 and lower(campaign_name) like '%trader%' 
;

 select 
    distinct 'IN' as market
    , 'DL' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.dl197_transaction a
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
 and (lower(a.campaign_name) like '%trader%' or lower(a.campaign_name) like '%rey%')
union 
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') > 180 and
 b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
 and lower(campaign_name) like '%trader%' 
;

-----*********************************************************************
-----*********************************************************************
--active
  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in (('Andhra Pradesh')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Bihar and Jharkhand')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Chennai','Tamilnadu')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Karnataka')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Kerala')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Madhya Pradesh and Chhattisgarh')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Maharashtra','Mumbai')
 and lower(campaign_name) like '%trader%' 
;

  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Rajasthan')
 and lower(campaign_name) like '%trader%' 
;


  select 
    distinct 'IN' as market
    , 'BT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
 from PRM.bt_entry a
 inner join "PRM"."bt_campaign" d on a.campaign_id=d.campaign_id
 inner join ref_mobile_lookup b on b.lookup_prefix5 = a.region_lookup_number
 where current_date - cast(a.entry_date as date format 'YYYY-MM-DD') <= 180 and
 b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
 and lower(campaign_name) like '%trader%' 
;

-----*********************************************************************
-----*********************************************************************
--bb
  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Andhra Pradesh')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Bihar and Jharkhand')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Chennai','Tamilnadu')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Karnataka')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Kerala')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Madhya Pradesh and Chhattisgarh')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Maharashtra','Mumbai')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Rajasthan')
;

  select 
    distinct 'IN' as market
    , 'BB' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where  ((cast(substr(a.age,0,5) as number) >= 1995 or cast(a.age as number) >= 21))
and b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
;

-----*********************************************************************
-----*********************************************************************
--lk
select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Andhra Pradesh');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Bihar and Jharkhand');

select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Chennai','Tamilnadu');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Karnataka');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Kerala');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Madhya Pradesh and Chhattisgarh');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Maharashtra','Mumbai');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Rajasthan');


select 
    distinct 'IN' as market
    , 'LK' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where 
cast(substr(a.date_of_birth,6,5) as number) >= 1995 and b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand');




-----*********************************************************************
-----*********************************************************************
--kkt
  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Andhra Pradesh')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Bihar and Jharkhand')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Chennai','Tamilnadu')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Karnataka')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Kerala')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Madhya Pradesh and Chhattisgarh')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Maharashtra','Mumbai')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Rajasthan')
;

  select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a."best_mobile_number_hash" as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
;

--PDWH
-----*********************************************************************
-----*********************************************************************
--vaseline
select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Andhra Pradesh')
    and ( lower(a.brand) like 'vasel%' )
;

select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Bihar and Jharkhand')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Chennai','Tamilnadu')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Karnataka')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Kerala')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Madhya Pradesh and Chhattisgarh')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Maharashtra','Mumbai')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Rajasthan')
    and ( lower(a.brand) like 'vasel%' )
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
    and ( lower(a.brand) like 'vasel%' )
;



-----*********************************************************************
-----*********************************************************************
--fal

select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Andhra Pradesh')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;

select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Bihar and Jharkhand')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Chennai','Tamilnadu')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Karnataka')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Kerala')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Madhya Pradesh and Chhattisgarh')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Maharashtra','Mumbai')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Rajasthan')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
    and ( lower(a.brand) like 'f&l%'
         or lower(a.brand) like 'fal%'
         or lower(a.brand) like 'fl%'
         or lower(a.brand) like '%fair%love%')
;

-----*********************************************************************
-----*********************************************************************
--sunsilk
select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Andhra Pradesh')
    and  (lower(a.brand) like '%sunsil%')
;

select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Bihar and Jharkhand')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Chennai','Tamilnadu')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Karnataka')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Kerala')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Madhya Pradesh and Chhattisgarh')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Maharashtra','Mumbai')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Rajasthan')
    and  (lower(a.brand) like '%sunsil%')
;


select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and b.region in ('Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
    and  (lower(a.brand) like '%sunsil%')
;



;