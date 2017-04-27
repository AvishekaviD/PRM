--bb and datediff(day,lastinteractiondate,getdate()) <= 180 
--MO_HA_ _IN0236Recency0to6_20160630_NanditaGodbole
--MO_HA_ _IN0236RecencyMorethan6_20160630_NanditaGodbole
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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like 'pond%' )	and datediff(day,lastinteractiondate,getdate()) <= 180 ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like '%bru%' or lower(a.brand) like 'coffee%' )	and datediff(day,lastinteractiondate,getdate()) <= 180 ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(lower(a.brand) like 'comfor%')	and datediff(day,lastinteractiondate,getdate()) <= 180 ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like 'dove%' )	and datediff(day,lastinteractiondate,getdate()) <= 180 ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like 'cornetto%')	and datediff(day,lastinteractiondate,getdate()) <= 180 ;

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
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and (lower(a.provider) like '%pureit%' ) and datediff(day,lastinteractiondate,getdate()) <= 180 ;	
	
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
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and (lower(a.provider) like '%lakme%') and datediff(day,lastinteractiondate,getdate()) <= 180 ;	

-- greater

--bb and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null)

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like 'pond%' )	and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like '%bru%' or lower(a.brand) like 'coffee%' )	and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(lower(a.brand) like 'comfor%') and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like 'dove%' )	and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;

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
where --a.optinhulbrand in ('A','C') and 
a.ismobilevalid = 'Y' 
and (lower(a.brand) like 'cornetto%')	and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;

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
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and (lower(a.provider) like '%pureit%' ) and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;	
	
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
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and (lower(a.provider) like '%lakme%') and (datediff(day,lastinteractiondate,getdate()) > 180 or lastinteractiondate is null) ;	


select 
     distinct  'IN' as market
    , 'BB' as provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select a.best_mobile_number_hash from PRM.bb_registration a
join PRM.bb_search b on a.user_id = b.search_id
where a.best_mobile_number_hash <> ''
group by 1 having count(*) = 2 ) as a;

select 
     distinct  'IN' as market
    , 'BB' as provider
	, a.best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select a.best_mobile_number_hash from PRM.bb_registration a
join PRM.bb_search b on a.user_id = b.search_id
where a.best_mobile_number_hash <> ''
group by 1 having count(*) = 4) as a;


--email

select 
     distinct  'IN' as market
    , 'BB' as provider
	, a.email_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct email_hash from PRM.bb_registration 
where best_mobile_number_hash in (select a.best_mobile_number_hash from PRM.bb_registration a
join PRM.bb_search b on a.user_id = b.search_id
where a.best_mobile_number_hash <> ''
group by 1 having count(*) = 2) and email_hash <> ''
) as a;

select 
     distinct  'IN' as market
    , 'BB' as provider
	, a.email_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct email_hash from PRM.bb_registration 
where best_mobile_number_hash in (select a.best_mobile_number_hash from PRM.bb_registration a
join PRM.bb_search b on a.user_id = b.search_id
where a.best_mobile_number_hash <> ''
group by 1 having count(*) = 4) and email_hash <> ''
) as a;
 
 
