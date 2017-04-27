select case when lower(a.provider) like '%bebeauti%' then 'BB'
when lower(a.provider) like '%pureit%' then 'PI' when lower(a.provider) like '%lakme%' then 'LK' 
end as provider,b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where lower(b.region) like '%mumb%'
and (lower(a.provider) like '%bebeauti%' or lower(a.provider) like '%pureit%' 
or lower(a.provider) like '%lakme%')
group by 1,2
order by 1,2;

select case when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'trese%' then 'Tresemme'
else 'Others' end as brand,b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where  (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'trese%'  
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' )
and lower(b.region) like '%mumb%'
group by 1,2
order by 1,2;

select case when lower(a.provider) like '%bebeauti%' then 'BB'
when lower(a.provider) like '%pureit%' then 'PI' when lower(a.provider) like '%lakme%' then 'LK' 
end as provider,
case when lower(a.city) like '%mumb%' then 'Mumbai'
when lower(a.city) like '%bomb%' then 'Mumbai'
end as City,count(distinct a.emailaddress)
from  southasia.pdwh_counting_email a
where (lower(a.provider) like '%bebeauti%' or lower(a.provider) like '%pureit%' 
or lower(a.provider) like '%lakme%')
and lower(a.city) like '%mumb%' or lower(a.city) like '%bomb%'
group by 1,2
order by 1,2;


select case when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'trese%' then 'Tresemme'
else 'Others' end as brand,
case when lower(a.city) like '%mumb%' then 'Mumbai'
when lower(a.city) like '%bomb%' then 'Mumbai'
end as City,count(distinct a.emailaddress)
from southasia.pdwh_counting_email a
where (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'trese%'  
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' )
and lower(a.city) like '%mumb%' or lower(a.city) like '%bomb%'
group by 1,2
order by 1,2;

select case when lower(a.brand) like 'clinic%' then 'Clinic'
when lower(a.brand) like 'clear%' then 'Clear'
when lower(a.brand) like '%all%cl%' then 'Clear'
when lower(a.brand) like 'lux%' then 'Lux'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like 'rin%' then 'RIN'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like 'axe%' then 'Axe'
when lower(a.brand) like 'close%' then 'Close UP'
when lower(a.brand) like 'domex%' then 'Domex'
when lower(a.brand) like 'doemx%' then 'Domex'
when lower(a.brand) like 'dmx%' then 'Domex'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like 'kissan%' then 'Kissan'
when lower(a.brand) like '%ketchup%' then 'Kissan'
when lower(a.brand) like 'knor%' then 'Knorr'
when lower(a.brand) like 'kw%' then 'Kwality Wall''s'
when lower(a.brand) like 'liri%' then 'Liril'
when lower(a.brand) like 'pear%' then 'Pears'
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'ayu%' then 'Ayush'
else 'Others' end as brand, b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where lower(b.region) like '%mumb%'
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
where lower(b.region) like '%mumb%'
and (lower(a.provider) like '%bebeauti%' or lower(a.provider) like '%pureit%' 
or lower(a.provider) like '%lakme%')

union all

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
where  (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'trese%'  
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' )
and lower(b.region) like '%mumb%'
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
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where lower(b.region) like '%mumb%'
and (lower(a.brand) like 'clinic%' or lower(a.brand) like 'clear%' or lower(a.brand) like '%all%cl%' or lower(a.brand) like 'lux%' 
or lower(a.brand) like 'pond%' or lower(a.brand) like 'vasel%' or lower(a.brand) like 'rin%' 
or lower(a.brand) like 'vim%' or lower(a.brand) like 'f&l%' or lower(a.brand) like 'fal%' 
or lower(a.brand) like 'fl%' or lower(a.brand) like '%fair%love%' or lower(a.brand) like 'vim%' 
or lower(a.brand) like '%vim%' or lower(a.brand) like 'axe%' or lower(a.brand) like 'close%' 
or lower(a.brand) like 'domex%' or lower(a.brand) like 'doemx%' or lower(a.brand) like 'dmx%' 
or lower(a.brand) like 'dove%' or lower(a.brand) like 'kissan%' or lower(a.brand) like '%ketchup%' 
or lower(a.brand) like 'knor%' or lower(a.brand) like 'kw%' or lower(a.brand) like 'liri%' 
or lower(a.brand) like 'pear%' or lower(a.brand) like 'pep%' or lower(a.brand) like 'sunsil%' 
or lower(a.brand) like 'avian%' or lower(a.brand) like 'ayu%' )
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
	, a.emailaddress as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from  southasia.pdwh_counting_email a
where (lower(a.provider) like '%bebeauti%' or lower(a.provider) like '%pureit%' 
or lower(a.provider) like '%lakme%')
and lower(a.city) like '%mumb%' or lower(a.city) like '%bomb%'

union all 

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
	, a.emailaddress as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from southasia.pdwh_counting_email a
where (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'trese%'  
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' )
and lower(a.city) like '%mumb%' or lower(a.city) like '%bomb%'

