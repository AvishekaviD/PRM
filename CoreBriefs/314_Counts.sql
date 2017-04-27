
select b.region Circles,case 
when lower(a.brand) like 'clinic%' then 'Clinic'
when lower(a.brand) like 'clear%' then 'Clear'
when lower(a.brand) like '%all%cl%' then 'Clear'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like 'rin%' then 'RIN'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like 'axe%' then 'Axe'
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
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'cornetto%' then 'Cornetto'
else 'Others' end as brand,count(distinct a.mobileno)
from
    southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and (lower(b.region) like 'chen%' 
or lower(b.region) like 'mum%' 
or lower(b.region) like 'kol%' 
or lower(b.region) like 'delh%')
group by 1,2
order by 1,2
;



select 
case when lower(a.city) like 'bangalu%' then 'Bengaluru'
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
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
when lower(a.city) like 'ahmed%' then 'Ahemdabad'
when lower(a.city) like 'ahmad%' then 'Ahemdabad'
when lower(a.city) like 'ahmd%' then 'Ahemdabad'
when lower(a.city) like 'aham%' then 'Ahemdabad'
when lower(a.city) like 'ahem%' then 'Ahemdabad'
else '' end as Circles,case 
when lower(a.brand) like 'clinic%' then 'Clinic'
when lower(a.brand) like 'clear%' then 'Clear'
when lower(a.brand) like '%all%cl%' then 'Clear'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like 'rin%' then 'RIN'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like 'axe%' then 'Axe'
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
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'cornetto%' then 'Cornetto'
else 'Others' end as brand,count(distinct a.mobileno)
from
    southasia.pdwh_counting_mobile a
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and (lower(a.city) like 'bangalu%'
or lower(a.city) like 'bangalo%'
or lower(a.city) like 'banagal%'
or lower(a.city) like 'bengalu%'
or lower(a.city) like 'bangalo%'
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%'
or lower(a.city) like 'bango%'
or lower(a.city) like 'bangu%'
or lower(a.city) like 'blr%'
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%'
or lower(a.city) like 'hyder%'
or lower(a.city) like 'hydra%'
or lower(a.city) like 'puna%' 
or lower(a.city) like 'poona%'
or lower(a.city) like 'pune%' 
or lower(a.city) like 'ahmed%'
or lower(a.city) like 'ahmad%'
or lower(a.city) like 'ahmd%' 
or lower(a.city) like 'aham%' 
or lower(a.city) like 'ahem%' )
group by 1,2
order by 1,2
;

