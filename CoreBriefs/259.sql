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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%'or lower(a.brand) like 'vim%'
or lower(a.brand) like 'vim%' or lower(a.brand) like '%vim%' or lower(a.brand) like 'close%'
or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%red%l%'
or lower(a.brand) like '%sunli%' or lower(a.brand) like '%vasel%' or lower(a.brand) like '%clini%')
and b.region in ('Maharashtra','Mumbai','Haryana','Bihar and Jharkhand','Rajasthan','Madhya Pradesh and Chhattisgarh','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')





 select 
    distinct 'IN' as market
    , 'KKT' as provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Maharashtra','Mumbai','Haryana','Bihar and Jharkhand','Rajasthan','Madhya Pradesh and Chhattisgarh','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')

