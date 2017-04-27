
select 
case 
when lower(a.brand) like '%avia%' then 'Aviance'
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like 'comfo%' then 'Comfort'
when lower(a.brand) like 'dome%' then 'Domex'
when lower(a.brand) like '%dove%' then 'Dove'
when lower(a.brand) like 'el %' then 'Ell 18'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'kissan%' then 'Kissan'
when lower(a.brand) like 'knor%' then 'Knorr'
when lower(a.brand) like 'kwali%' then 'Kwality Wall''s'
when lower(a.brand) like 'liri%' then 'Liril'
when lower(a.brand) like 'lux%' then 'Lux'
when lower(a.brand) like 'pear%' then 'Pears'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'pure%' then 'PureIT'
when lower(a.brand) like 'rin%' then 'Rin'
when lower(a.brand) like 'sunsi%' then 'Sunsilk'
when lower(a.brand) like 'surf%' then 'Surf Excel'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'trese%' then 'Tresemme'
when lower(a.brand) like 'vaseli%' then 'Vaseline'
else ''
end as brand
,count(distinct mobileno) as counts
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
group by 1
order by 1
;



select 
a.provider as brand
,count(distinct mobileno) as counts
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and lower(a.provider) in ('bebeautiful','lakme')
group by 1
order by 1
;

