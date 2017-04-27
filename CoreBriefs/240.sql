select 
    top 1500 distinct 'IN' as market
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
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y' and (lower(b.region) like '%punj%')
and datediff(day,lastinteractiondate,getdate()) <= 90;	


select 
    top 1500 distinct 'IN' as market
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
and (lower(b.region) like '%tamil%' or lower(b.region) like '%chenn%')	
and datediff(day,lastinteractiondate,getdate()) <= 90;	

select 
    top 1500 distinct 'IN' as market
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
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y' and (lower(b.region) like '%delhi%')
and datediff(day,lastinteractiondate,getdate()) <= 90;	