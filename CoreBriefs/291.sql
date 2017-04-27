--MO_HA_One97_IN0291_20160831_JustinJenston

select  
case 
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like 'close%' then 'Close up'
when lower(a.brand) like '%axe%' then 'Axe'
when lower(a.brand) like '%coff%' then 'Bru'
when lower(a.brand) like '%corn%' then 'Cornetto'
end as brand,b.region,
count(distinct a.mobileno) counts
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and (lower(a.brand) like '%bru%' or lower(a.brand) like 'coff%' or lower(a.brand) like '%axe%' 
     or lower(a.brand) like '%close%' or lower(a.brand) like '%corn%' )
    and lower(b.region) like '%kolkata%' 
group by 1,2
order by 1,2;

----------------------------------------------------------------------------------------------------------------




----------------------------------------------------------------------------------------------------------------


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
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) like '%kolkata%' 
and (lower(a.brand) like '%bru%' or lower(a.brand) like 'coff%') ;


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
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) like '%kolkata%' 
and  lower(a.brand) like '%axe%' ;


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
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) like '%kolkata%' 
and  lower(a.brand) like '%close%' ;


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
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) like '%kolkata%' 
and  lower(a.brand) like '%corn%' ;