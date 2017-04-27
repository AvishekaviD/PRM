select 
case 
when lower(b.region) like '%madhya%pradesh%' then 'Madhya Pradesh'
when lower(b.region) like '%bihar%jhark%' then 'Bihar and Jharkhand'
end as region,
count(distinct a.best_mobile_number_hash)
from PRM.kkt_cdr_contest_trans_ST a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9
and a.option_provided = 2
and (lower(b.region) like '%madhya%pradesh%' or lower(b.region) like '%bihar%jhark%')
group by 1
;


select 
case 
when lower(b.region) like '%madhya%pradesh%' then 'Madhya Pradesh'
when lower(b.region) like '%bihar%jhark%' then 'Bihar and Jharkhand'
end as region,
case when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%wheel%' then 'Wheel'
when lower(a.brand) like '%sunli%' then 'Sunlight'
when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like '%red%lab%' then 'Red Lable'
else '' end as brand
,count(distinct a.mobileno)
from
    southasia.pdwh_counting_mobile a
	join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and (lower(b.region) like '%madhya%pradesh%' or lower(b.region) like '%bihar%jhark%')
group by 1,2
order by 1,2;
