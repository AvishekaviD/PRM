--MO_HA_India360_IN0287_20160830_RItikaSinha

--**********************************************************
--north
--**********************************************************
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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('delhi')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('delhi')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('delhi')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('haryana','himachal pradesh','punjab','uttar pradesh (east)','uttar pradesh (west) and uttarakhand')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('haryana','himachal pradesh','punjab','uttar pradesh (east)','uttar pradesh (west) and uttarakhand')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('haryana','himachal pradesh','punjab','uttar pradesh (east)','uttar pradesh (west) and uttarakhand')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('delhi','haryana','himachal pradesh','punjab','uttar pradesh (east)','uttar pradesh (west) and uttarakhand')
and lower(a.provider) = 'kkt') as a

--**********************************************************
--east
--**********************************************************
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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('mumbai')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('mumbai')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('mumbai')
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('madhya pradesh and chhattisgarh' ,'maharashtra' , 'gujarat' , 'rajasthan' )
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('madhya pradesh and chhattisgarh' ,'maharashtra' , 'gujarat' , 'rajasthan' )
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('madhya pradesh and chhattisgarh' ,'maharashtra' , 'gujarat' , 'rajasthan' )
and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('mumbai','madhya pradesh and chhattisgarh' ,'maharashtra' , 'gujarat' , 'rajasthan' )
and lower(a.provider) = 'kkt') as a

--**********************************************************
--west
--**********************************************************


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('kolkata') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('kolkata') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('kolkata') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('west bengal & andaman and nicobar is.' , 'orissa' , 'bihar and jharkhand') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('west bengal & andaman and nicobar is.' , 'orissa' , 'bihar and jharkhand') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('west bengal & andaman and nicobar is.' , 'orissa' , 'bihar and jharkhand') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('kolkata','west bengal & andaman and nicobar is.' , 'orissa' , 'bihar and jharkhand')
and lower(a.provider) = 'kkt') as a



--**********************************************************
--south
--**********************************************************



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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('chennai') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('chennai') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('chennai') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%') ) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('andhra pradesh' ,'karnataka', 'kerala', 'tamilnadu') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%sunli%' or lower(a.brand) like '%red%l%' or lower(a.brand) like '%taj%'
 or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' or lower(a.brand) like '%brook%' 
 or lower(a.brand) like 'rin%'  or lower(a.brand) like '%rose%'  or lower(a.brand) like '%wheel%' )) as a


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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('andhra pradesh' ,'karnataka', 'kerala', 'tamilnadu') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like '%lifeb%'  or lower(a.brand) like 'lb%'  or lower(a.brand) like 'clinic%' 
 or lower(a.brand) like 'clear%'  or lower(a.brand) like '%all%cl%'  or lower(a.brand) like 'lux%' 
 or lower(a.brand) like 'pond%'  or lower(a.brand) like 'vasel%'  or lower(a.brand) like 'vim%' 
 or lower(a.brand) like 'f&l%'  or lower(a.brand) like 'fal%' or lower(a.brand) like 'fl%' 
 or lower(a.brand) like '%fair%love%'  or lower(a.brand) like 'vim%'  or lower(a.brand) like '%vim%' 
 or lower(a.brand) like 'close%'  or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%'
 or lower(a.brand) like '%ketchup%'  or lower(a.brand) like '%lipton%' or lower(a.brand) like 'knor%'
 or lower(a.brand) like 'kw%' or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('andhra pradesh' ,'karnataka', 'kerala', 'tamilnadu') and lower(a.provider) not in ('kkt') 
and (lower(a.brand) like 'bru%'  or lower(a.brand) like 'coffee%' or lower(a.brand) like '%surf%'
 or lower(a.brand) like 'axe%'  or lower(a.brand) like 'tigi%'  or lower(a.brand) like 'cornetto%'
 or lower(a.brand) like 'comfor%'  or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%'
 or lower(a.brand) like 'dmx%' or lower(a.brand) like 'trese%' or lower(a.provider) like 'lakm%' or lower(a.provider) like 'bebea%')) as a

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
from (select top 500 distinct a.provider, a.mobileno 
from southasia.pdwh_counting_mobile a join southasia.pdwh_ref_region b 
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(b.region) in ('chennai','andhra pradesh' ,'karnataka', 'kerala', 'tamilnadu')
and lower(a.provider) = 'kkt') as a