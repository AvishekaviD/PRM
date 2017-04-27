select 
    brand,case 
when lower(region) like '%uttar%' then 'Uttar Pradesh'
when lower(region) like '%bengal%' then 'West Bengal'
when lower(region) like '%kolka%' then 'West Bengal'
when lower(region) like '%bihar%' then 'Bihar'
when lower(region) like '%raja%' then 'Rajasthan'
when lower(region) like '%oris%' then 'Orissa'
when lower(region) like '%madhya%' then 'Madhya Pradesh'
end as Region, gender,count(distinct a.best_mobile_number_hash) as counts
from ( select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then 'Male'
    when a.option_provided = 2 then 'Female'
    else '' end as gender
from PRM.kkt_cdr_contest_trans_ST a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9
and (lower(b.region) like '%uttar%' 
or lower(b.region) like '%bengal%' 
or lower(b.region) like '%kolka%' 
or lower(b.region) like '%bihar%'
or lower(b.region) like '%raja%' 
or lower(b.region) like '%oris%' 
or lower(b.region) like '%madhya%')
union
 select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then 'Male'
    when a.option_provided = 2 then 'Female'
    else '' end as gender
from PRM.kkt_cdrl_contest a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9
and (lower(b.region) like '%uttar%' 
or lower(b.region) like '%bengal%' 
or lower(b.region) like '%kolka%' 
or lower(b.region) like '%bihar%'
or lower(b.region) like '%raja%' 
or lower(b.region) like '%oris%' 
or lower(b.region) like '%madhya%')) as a
group by 1,2,3
order by 1,2,3;



select  
case 
when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like '%brook%' then 'Brooke Bond'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%whee%' then 'Wheel'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like '%red%l%' then 'Red Label'
when lower(a.brand) like '%sunli%' then 'Sunlight'
end as brand, 
case when lower(b.region) like '%orissa%' then 'Orissa'
when lower(b.region) like '%bihar%jharkhand%' then 'Bihar'
when lower(b.region) like '%kolkata%' then 'West Bengal'
when lower(b.region) like '%west%bengal%' then 'West Bengal'
when lower(b.region) like '%madhya%chhat%' then 'Madhya Pradesh'
when lower(b.region) like '%uttar%'then 'Uttar Pradesh'
when lower(region) like '%raja%' then 'Rajasthan'
end as Region,
count(distinct a.mobileno) counts
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
    and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
     or lower(a.brand) like '%rose%' or lower(a.brand) like '%whee%' 
   or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or     lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%' or lower(b.region) like '%madhya%chhat%' 
	or lower(b.region) like '%uttar%' or lower(b.region) like '%raja%')
group by 1,2
order by 1,2;



select  
case 
when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like '%brook%' then 'Brooke Bond'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%whee%' then 'Wheel'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like '%red%l%' then 'Red Label'
when lower(a.brand) like '%sunli%' then 'Sunlight'
end as brand, 
case when lower(b.region) like '%orissa%' then 'Orissa'
when lower(b.region) like '%bihar%jharkhand%' then 'Bihar'
when lower(b.region) like '%kolkata%' then 'West Bengal'
when lower(b.region) like '%west%bengal%' then 'West Bengal'
when lower(b.region) like '%madhya%chhat%' then 'Madhya Pradesh'
when lower(b.region) like '%uttar%'then 'Uttar Pradesh'
when lower(region) like '%raja%' then 'Rajasthan'
end as Region,
count(distinct a.mobileno) counts
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    --a.optinhulbrand in ('A','C')    and 
	a.ismobilevalid = 'Y'
    and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
     or lower(a.brand) like '%rose%' or lower(a.brand) like '%whee%' 
   or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or     lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%' or lower(b.region) like '%madhya%chhat%' 
	or lower(b.region) like '%uttar%' or lower(b.region) like '%raja%')
group by 1,2
order by 1,2;


select  
case 
when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like '%brook%' then 'Brooke Bond'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%whee%' then 'Wheel'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like '%red%l%' then 'Red Label'
when lower(a.brand) like '%sunli%' then 'Sunlight'
when lower(a.provider) like '%kkt%' then 'KKT'
end as brand, 
case when lower(b.region) like '%orissa%' then 'Orissa'
when lower(b.region) like '%bihar%jharkhand%' then 'Bihar'
when lower(b.region) like '%kolkata%' then 'West Bengal'
when lower(b.region) like '%west%bengal%' then 'West Bengal'
when lower(b.region) like '%madhya%chhat%' then 'Madhya Pradesh'
when lower(b.region) like '%uttar%'then 'Uttar Pradesh'
when lower(region) like '%raja%' then 'Rajasthan'
end as Region,
count(distinct a.mobileno) counts
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    --a.optinhulbrand in ('A','C')    and 
	a.ismobilevalid = 'Y'
    and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
     or lower(a.brand) like '%rose%' or lower(a.brand) like '%whee%' 
   or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' or lower(a.provider) like '%kkt%')
    and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or     lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%' or lower(b.region) like '%madhya%chhat%' 
	or lower(b.region) like '%uttar%' or lower(b.region) like '%raja%')
group by 1,2
order by 1,2;


select   
case when lower(b.region) like '%orissa%' then 'Orissa'
when lower(b.region) like '%bihar%jharkhand%' then 'Bihar'
when lower(b.region) like '%kolkata%' then 'West Bengal'
when lower(b.region) like '%west%bengal%' then 'West Bengal'
when lower(b.region) like '%madhya%chhat%' then 'Madhya Pradesh'
when lower(b.region) like '%uttar%'then 'Uttar Pradesh'
when lower(region) like '%raja%' then 'Rajasthan'
end as Region,
count(distinct a.mobileno) counts
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    --a.optinhulbrand in ('A','C')    and 
	a.ismobilevalid = 'Y'
    and (lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
     or lower(a.brand) like '%rose%' or lower(a.brand) like '%whee%' 
   or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' or lower(a.provider) like '%kkt%')
    and (lower(b.region) like '%orissa%' or
    lower(b.region) like '%bihar%jharkhand%' or     lower(b.region) like '%kolkata%' or
    lower(b.region) like '%west%bengal%' or lower(b.region) like '%madhya%chhat%' 
	or lower(b.region) like '%uttar%' or lower(b.region) like '%raja%')
group by 1
order by 1;