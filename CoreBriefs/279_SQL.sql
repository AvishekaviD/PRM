select 
    b.region,'KKT' as brand,count(distinct a.best_mobile_number_hash) as counts
from PRM.kkt_cdr_contest_trans_ST a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
group by 1,2
order by 1,2;

select b.region,
case when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like 'clinic%' then 'Clinic'
when lower(a.brand) like 'clear%' then 'Clear'
when lower(a.brand) like '%all%cl%' then 'Clear'
when lower(a.brand) like 'lux%' then 'Lux'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like '%brook%' then 'Brooke Bond'
when lower(a.brand) like 'rin%' then 'RIN'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%wheel%' then 'Wheel'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like 'axe%' then 'Axe'
when lower(a.brand) like 'close%' then 'Close UP'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'domex%' then 'Domex'
when lower(a.brand) like 'doemx%' then 'Domex'
when lower(a.brand) like 'dmx%' then 'Domex'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like 'kissan%' then 'Kissan'
when lower(a.brand) like '%ketchup%' then 'Kissan'
when lower(a.brand) like '%lipton%' then 'Lipton'
when lower(a.brand) like 'knor%' then 'Knorr'
when lower(a.brand) like 'kw%' then 'Kwality Wall''s'
when lower(a.brand) like 'liri%' then 'Liril'
when lower(a.brand) like 'pear%' then 'Pears'
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like 'trese%' then 'Tresemme'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like '%taj%' then 'Taj mahal'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'anna%' then 'Annapurna'
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'ayu%' then 'Ayush'
when lower(a.brand) like 'cornetto%' then 'Cornetto'
when lower(a.brand) like '%red%l%' then 'Red Label'
when lower(a.brand) like 'rexo%' then 'Rexona'
when lower(a.brand) like '%sunli%' then 'Sunlight'
when lower(a.brand) like '' then ''
else 'Others' end as brand, count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
group by 1,2
order by 1,2;


select b.region,a.provider as brand, count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
group by 1,2
order by 1,2;