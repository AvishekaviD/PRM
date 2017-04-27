select  
case 
when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like '%brook%' then 'Brooke Bond'
when lower(a.brand) like 'rin%' then 'RIN'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%wheel%' then 'Wheel'
when lower(a.brand) like 'close%' then 'Close UP'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like '%red%l%' then 'Red Label'
when lower(a.brand) like '%sunli%' then 'Sunlight'
end as brand, 
case when lower(b.region) like '%orissa%' then 'Odisha'
when lower(b.region) like '%bihar%jharkhand%' then 'Bihar and Jharkhand'
when lower(b.region) like '%kolkata%' then 'West Bengal'
when lower(b.region) like '%west%bengal%' then 'West Bengal'
end as Region
count(distinct a.mobileno) counts
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or
    lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%')
group by 1,2
order by 1,2;



 select 
    brand
    ,region, age_group,count(distinct a.best_mobile_number_hash) as counts
from ( select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then '<15'
    when a.option_provided = 2 then '15-35'
    when a.option_provided = 3 then '15-35'
    else '>35' end as age_group
from PRM.kkt_cdr_contest_trans_ST a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 10
and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or
    lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%')
union
 select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then '<15'
    when a.option_provided = 2 then '15-35'
    when a.option_provided = 3 then '15-35'
    else '>35' end as age_group
from PRM.kkt_cdrl_contest a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 10
and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or
    lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%')) as a
group by 1,2,3
order by 1,2,3;








