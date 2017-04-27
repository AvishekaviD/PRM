select 
case when lower(a.city) like 'ahmed%' then 'Ahemdabad'
when lower(a.city) like 'ahmad%' then 'Ahemdabad'
when lower(a.city) like 'ahmd%' then 'Ahemdabad'
when lower(a.city) like 'aham%' then 'Ahemdabad'
when lower(a.city) like 'ahem%' then 'Ahemdabad'
when lower(a.city) like 'bangalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'banagal%' then 'Bengaluru'
when lower(a.city) like 'bengalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'bangl%' then 'Bengaluru'
when lower(a.city) like 'bengl%' then 'Bengaluru'
when lower(a.city) like 'bango%' then 'Bengaluru'
when lower(a.city) like 'bangu%' then 'Bengaluru'
when lower(a.city) like 'blr%' then 'Bengaluru'
when lower(a.city) like 'bnag%' then 'Bengaluru'
when lower(a.city) like 'blore%' then 'Bengaluru'
when lower(a.city) like 'hyder%' then 'Hyderbad'
when lower(a.city) like 'hydra%' then 'Hyderbad'
when lower(a.city) like 'indor%' then 'indore'
when lower(city) like 'jaipur%' then 'Jaipur'
when lower(city) like 'kanpu%' then 'Kanpur'
when lower(a.city) like 'ludh%' then 'Ludhiana'
when lower(a.city) in ('lacknou','lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw','lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow','locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow','lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu','lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno','lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw','laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow','luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow','lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow','luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown','lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau','lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou','lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown','lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow','lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow','lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow','lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw','luknow','luncknow','lunknow') then 'Lucknow'
when lower(city) like 'patna%' then 'Patna'
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
end as City,
case when lower(a.brand) like '%avia%' then 'Aviance'
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
when lower(a.brand) like '%vim%' then 'Vim'
else ''
end as brand
,count(distinct a.mobileno) as counts
from
    southasia.pdwh_counting_mobile a
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
group by 1,2
order by 1,2




select 
b.region as Circles,
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
when lower(a.brand) like '%vim%' then 'Vim'
else ''
end as brand
,count(distinct a.mobileno) as counts
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and lower(b.region) in ('chennai','delhi','mumbai','kolkata')
group by 1,2
order by 1,2
;


select 
b.region as Circles,
a.provider brand
,count(distinct a.mobileno) as counts
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and lower(b.region) in ('chennai','delhi','mumbai','kolkata')
group by 1,2
order by 1,2
;

select 
case when lower(a.city) like 'ahmed%' then 'Ahemdabad'
when lower(a.city) like 'ahmad%' then 'Ahemdabad'
when lower(a.city) like 'ahmd%' then 'Ahemdabad'
when lower(a.city) like 'aham%' then 'Ahemdabad'
when lower(a.city) like 'ahem%' then 'Ahemdabad'
when lower(a.city) like 'bangalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'banagal%' then 'Bengaluru'
when lower(a.city) like 'bengalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'bangl%' then 'Bengaluru'
when lower(a.city) like 'bengl%' then 'Bengaluru'
when lower(a.city) like 'bango%' then 'Bengaluru'
when lower(a.city) like 'bangu%' then 'Bengaluru'
when lower(a.city) like 'blr%' then 'Bengaluru'
when lower(a.city) like 'bnag%' then 'Bengaluru'
when lower(a.city) like 'blore%' then 'Bengaluru'
when lower(a.city) like 'hyder%' then 'Hyderbad'
when lower(a.city) like 'hydra%' then 'Hyderbad'
when lower(a.city) like 'indor%' then 'indore'
when lower(city) like 'jaipur%' then 'Jaipur'
when lower(city) like 'kanpu%' then 'Kanpur'
when lower(a.city) like 'ludh%' then 'Ludhiana'
when lower(a.city) in ('lacknou','lacknow','lakhanau','lakhanow','lakhmw'
,'lakhnaow','lakhnau','lakhnav','lakhnaw','lakhnnow','lakhnou','lakhnau','laknaw'
,'lakno','laknow','licknow','lkucknow','locknow','loknow','luchknow','luchnow'
,'luckhnow','luckknow','luckmow','lukcnow','lukhnow','luknow','luncknow','lunknow'
,'lacknow','lacnkow','lakhanou','lakhanu','lakhlow','lakhnaow','lakhnau','lakhnau cantonment'
,'lakhnaw','lakhnaw,','lakhnnow','lakhno','lakhnuw','lakhonw','lakhow','laknau'
,'laknou','laknow','lako','lakonw','laucknow','locknow','lokhnow','lokhnw'
,'lokhonw','loknow','louknow','luchknow','luchnow','lucjnow','luck now','luckhanow'
,'luckhnow','lucknaw','luckonow','luckow','lucnow','luicknow','lukhnau','lukhnaw'
,'lukhnow','lukhnw','luknau','luknow','luncknow','lunckow','lunkhnow','lunknow'
,'lackhnow','lacknow','lacknowl','lacknown','lackow','lakhano','lakhanou','lakhanow'
,'lakhknow','lakhnao','lakhnaow','lakhnau','lakhnav','lakhnaw','lakhnawo','lakhneve'
,'lakhnou','lakhnov','lakhnu','lakhnuou','lakhnuw','lakhuno','lakknow','laknaouw'
,'laknaw','laknov','laknow','laknown','lakunaow','lalkhnow','lcknow','lcokhnov'
,'lichnow','licknow','locknao','locknow','lokhnow','lokhonw','loknav','loknow'
,'luchnow','luck now','luckhnav','luckhnow','lucknau','lucknav','lucknaw','luckniw'
,'lucknuw','luckonw','luckow','lucnow','lukhnau','lukhnauw','lukhno','lukhnow'
,'lukhnuw','luknau','luknauw','luknaw','luknow','luncknow','lunknow') then 'Lucknow'
when lower(city) like 'patna%' then 'Patna'
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
end as City,
a.provider brand
,count(distinct a.mobileno) as counts
from
    southasia.pdwh_counting_mobile a
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
group by 1,2
order by 1,2



