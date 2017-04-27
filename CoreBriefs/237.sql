
select 'BeBeautifull' as Brnad,case when lower(a.city) like '%jaip%' then 'Jaipur             ' end as City , count(distinct a.best_mobile_number_hash) as total_counts
from PRM.bb_registration a 
where  (cast(substr(a.age,0,5) as number) >= 1998 
or cast(substr(a.age,0,5) as number) <= 1981
or cast(a.age as number) >= 18 or cast(a.age as number) <=35)
and lower(a.city) like '%jaip%'
group by 1,2

union all

select 'Lakme' as Brnad,case when lower(a.city) like '%jaip%' then 'Jaipur' end as City , count(distinct a.best_mobile_number_hash) as total_counts
from PRM.lk_customer a 
where (cast(substr(a.date_of_birth,6,5) as number) >= 1998 or cast(substr(a.date_of_birth,6,5) as number) <= 1981)
and lower(a.city) like 'jaip%'
group by 1,2

union all 

select 'BeBeautifull' as Brnad,case when lower(b.region) like '%andhra%' then 'Andhra Pradesh'
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
when lower(b.region) like '%madhya%' then 'Madhya Pradesh'
when lower(b.region) like '%tamil%' then 'Tamilnadu'
when lower(b.region) like '%kolk%' then 'Kolkata'
when lower(b.region) like '%mumb%' then 'Mumbai'
when lower(b.region) like '%delh%' then 'Delhi' end as region, count(distinct a.best_mobile_number_hash) as total_counts
from PRM.bb_registration a join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (cast(substr(a.age,0,5) as number) >= 1998 
or cast(substr(a.age,0,5) as number) <= 1981
or cast(a.age as number) >= 18 or cast(a.age as number) <=35)
and ( lower(b.region) like '%andhra%' or lower(b.region) like '%uttar%' or lower(b.region) like '%madhya%' or lower(b.region) like '%tamil%'
or lower(b.region) like '%kolk%' or lower(b.region) like '%mumb%' or lower(b.region) like '%delh%')
group by 1,2


union all

select 'Lakme' as Brnad,case when lower(b.region) like '%andhra%' then 'Andhra Pradesh'
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
when lower(b.region) like '%madhya%' then 'Madhya Pradesh'
when lower(b.region) like '%tamil%' then 'Tamilnadu'
when lower(b.region) like '%kolk%' then 'Kolkata'
when lower(b.region) like '%mumb%' then 'Mumbai'
when lower(b.region) like '%delh%' then 'Delhi' end as region, count(distinct a.best_mobile_number_hash) as total_counts
from PRM.lk_customer a join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (cast(substr(a.date_of_birth,6,5) as number) >= 1998 or cast(substr(a.date_of_birth,6,5) as number) <= 1981)
and ( lower(b.region) like '%andhra%' or lower(b.region) like '%uttar%' or lower(b.region) like '%madhya%' or lower(b.region) like '%tamil%'
or lower(b.region) like '%kolk%' or lower(b.region) like '%mumb%' or lower(b.region) like '%delh%')
group by 1,2;



--pdwh

select case when lower(a.brand) like 'lux%' then 'Lux'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'domex%' then 'Domex'
when lower(a.brand) like 'doemx%' then 'Domex'
when lower(a.brand) like 'dmx%' then 'Domex'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like 'kissan%' then 'Kissan'
when lower(a.brand) like '%ketchup%' then 'Kissan'
when lower(a.brand) like 'knor%' then 'Knorr'
when lower(a.brand) like 'kw%' then 'Kwality Wall''s'
when lower(a.brand) like 'pear%' then 'Pears'
when lower(a.brand) like 'trese%' then 'Tresemme'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'ayu%' then 'Ayush'
when lower(a.brand) like 'cornetto%' then 'Cornetto'
else 'Others' end as brand,
case when lower(b.region) like '%andhra%' then 'Andhra Pradesh'
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
when lower(b.region) like '%madhya%' then 'Madhya Pradesh'
when lower(b.region) like '%tamil%' then 'Tamilnadu'
when lower(b.region) like '%kolk%' then 'Kolkata'
when lower(b.region) like '%mumb%' then 'Mumbai'
when lower(b.region) like '%delh%' then 'Delhi' end as region
,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and ( lower(b.region) like '%andhra%' or lower(b.region) like '%uttar%' or lower(b.region) like '%madhya%' or lower(b.region) like '%tamil%'
or lower(b.region) like '%kolk%' or lower(b.region) like '%mumb%' or lower(b.region) like '%delh%')
group by 1,2
order by 1,2;


select case when lower(a.brand) like 'lux%' then 'Lux'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'domex%' then 'Domex'
when lower(a.brand) like 'doemx%' then 'Domex'
when lower(a.brand) like 'dmx%' then 'Domex'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like 'kissan%' then 'Kissan'
when lower(a.brand) like '%ketchup%' then 'Kissan'
when lower(a.brand) like 'knor%' then 'Knorr'
when lower(a.brand) like 'kw%' then 'Kwality Wall''s'
when lower(a.brand) like 'pear%' then 'Pears'
when lower(a.brand) like 'trese%' then 'Tresemme'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'ayu%' then 'Ayush'
when lower(a.brand) like 'cornetto%' then 'Cornetto'
else 'Others' end as brand, case when lower(a.city) like '%jaip%' then 'Jaipur' end as City ,
count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and lower(a.city) like 'jaip%'
group by 1,2
order by 1,2;