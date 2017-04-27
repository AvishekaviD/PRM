select 
case when lower(a.brand) like '%corne%' then 'Cornetto' end as brand,
case when lower(b.region) like '%kolk%' then 'Kolkata'
when lower(b.region) like '%bengal%' then 'West bengal' end as region
, count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where  lower(a.brand) like '%corne%'
and (lower(b.region) like '%kolk%' or lower(b.region) like '%bengal%')
group by 1,2
order by 1,2;



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
where  lower(a.brand) like '%corne%'
and lower(b.region) like '%kolk%'


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
where  lower(a.brand) like '%corne%'
and lower(b.region) like '%bengal%'

