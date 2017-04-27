--MO_HA_MGAGE_IN0262Allbrands_20160728_HeemanishMidde

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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like 'clinic%'     or lower(a.brand) like 'clear%' 
	or lower(a.brand) like '%all%cl%' or lower(a.brand) like 'lux%' or lower(a.brand) like 'pond%' or lower(a.brand) like 'vasel%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like 'f&l%' or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
	or lower(a.brand) like '%fair%love%' or lower(a.brand) like 'bru%' or lower(a.brand) like '%surf%' or lower(a.brand) like 'axe%' 
	or lower(a.brand) like 'close%' or lower(a.brand) like 'comfor%' or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%' 
	or lower(a.brand) like 'dmx%' or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%' or lower(a.brand) like 'knor%' 
	or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'trese%' 
	or lower(a.brand) like 'sunsil%' or lower(a.brand) like 'avian%' or lower(a.brand) like 'ayu%' or lower(a.brand) like 'sure%' )
    and datediff(day,lastinteractiondate,getdate()) <= 30 --then '1 Month'
	union 
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and lower(a.provider) like '%lakm%'
	and datediff(day,lastinteractiondate,getdate()) <= 30 --then '1 Month';
	
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like 'clinic%'     or lower(a.brand) like 'clear%' 
	or lower(a.brand) like '%all%cl%' or lower(a.brand) like 'lux%' or lower(a.brand) like 'pond%' or lower(a.brand) like 'vasel%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like 'f&l%' or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
	or lower(a.brand) like '%fair%love%' or lower(a.brand) like 'bru%' or lower(a.brand) like '%surf%' or lower(a.brand) like 'axe%' 
	or lower(a.brand) like 'close%' or lower(a.brand) like 'comfor%' or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%' 
	or lower(a.brand) like 'dmx%' or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%' or lower(a.brand) like 'knor%' 
	or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'trese%' 
	or lower(a.brand) like 'sunsil%' or lower(a.brand) like 'avian%' or lower(a.brand) like 'ayu%' or lower(a.brand) like 'sure%' )
    and datediff(day,lastinteractiondate,getdate()) > 30 and datediff(day,lastinteractiondate,getdate()) <= 90 --then '1-3 Months'
	union 
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and lower(a.provider) like '%lakm%'
	and datediff(day,lastinteractiondate,getdate()) > 30 and datediff(day,lastinteractiondate,getdate()) <= 90 --then '1-3 Months';
	
	
	
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like 'clinic%'     or lower(a.brand) like 'clear%' 
	or lower(a.brand) like '%all%cl%' or lower(a.brand) like 'lux%' or lower(a.brand) like 'pond%' or lower(a.brand) like 'vasel%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like 'f&l%' or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
	or lower(a.brand) like '%fair%love%' or lower(a.brand) like 'bru%' or lower(a.brand) like '%surf%' or lower(a.brand) like 'axe%' 
	or lower(a.brand) like 'close%' or lower(a.brand) like 'comfor%' or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%' 
	or lower(a.brand) like 'dmx%' or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%' or lower(a.brand) like 'knor%' 
	or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'trese%' 
	or lower(a.brand) like 'sunsil%' or lower(a.brand) like 'avian%' or lower(a.brand) like 'ayu%' or lower(a.brand) like 'sure%' )
    and datediff(day,lastinteractiondate,getdate()) > 90 and datediff(day,lastinteractiondate,getdate()) <= 180 --then '3-6 Months'
	union 
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and lower(a.provider) like '%lakm%'
	and datediff(day,lastinteractiondate,getdate()) > 90 and datediff(day,lastinteractiondate,getdate()) <= 180 --then '3-6 Months';
	
	
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like 'clinic%'     or lower(a.brand) like 'clear%' 
	or lower(a.brand) like '%all%cl%' or lower(a.brand) like 'lux%' or lower(a.brand) like 'pond%' or lower(a.brand) like 'vasel%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like 'f&l%' or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
	or lower(a.brand) like '%fair%love%' or lower(a.brand) like 'bru%' or lower(a.brand) like '%surf%' or lower(a.brand) like 'axe%' 
	or lower(a.brand) like 'close%' or lower(a.brand) like 'comfor%' or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%' 
	or lower(a.brand) like 'dmx%' or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%' or lower(a.brand) like 'knor%' 
	or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'trese%' 
	or lower(a.brand) like 'sunsil%' or lower(a.brand) like 'avian%' or lower(a.brand) like 'ayu%' or lower(a.brand) like 'sure%' )
    and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null)--then 'More than 6 Months' 
    union 
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile  a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and lower(b.region) like '%uttar%'
	and lower(a.provider) like '%lakm%'
	and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null)--then 'More than 6 Months' ;
	
	
--
select 
    distinct 'IN' as market
    , 'LK' as provider
	, a.email_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from(select email_hash
from PRM.lk_customer a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%uttar%'
union 
select email_hash
from PRM.lk_customer_pti748 a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where lower(b.region) like '%uttar%') as a;



