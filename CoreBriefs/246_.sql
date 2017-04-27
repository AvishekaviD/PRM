select case when lower(a.provider) like '%bebeauti%' then 'BB'
when lower(a.provider) like '%pureit%' then 'PI' when lower(a.provider) like '%careli%' then 'CL'
when lower(a.provider) like '%btone%' then 'BT' when lower(a.provider) like '%h2h%' then 'H2H'
when lower(a.provider) like '%digital%' then 'DL' when lower(a.provider) like '%kkt%' then 'KKT'
when lower(a.provider) like '%lakme%' then 'LK' end as provider,b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where (lower(b.region) like '%kolk%' or lower(b.region) like '%delhi%' 
or lower(b.region) like '%mumb%' or lower(b.region) like '%chenn%')
group by 1,2
order by 1,2;

select case when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'trese%' then 'Tresemme'
else 'Others' end as brand,b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where  (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'dove%' 
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' 
or lower(a.brand) like 'trese%' )
and (lower(b.region) like '%kolk%' or lower(b.region) like '%delhi%' 
or lower(b.region) like '%mumb%' or lower(b.region) like '%chenn%')
group by 1,2
order by 1,2;

select case when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'trese%' then 'Tresemme'
else 'Others' end as brand,
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
end as city,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'dove%' 
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' 
or lower(a.brand) like 'trese%' )
and ((lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' 
or lower(a.city) like 'hyder%' or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' ))
group by 1,2
order by 1,2;

--

select case when lower(a.provider) like '%bebeauti%' then 'BB'
when lower(a.provider) like '%pureit%' then 'PI' when lower(a.provider) like '%careli%' then 'CL'
when lower(a.provider) like '%btone%' then 'BT' when lower(a.provider) like '%h2h%' then 'H2H'
when lower(a.provider) like '%digital%' then 'DL' when lower(a.provider) like '%kkt%' then 'KKT'
when lower(a.provider) like '%lakme%' then 'LK' end as provider,
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
end as city,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where (lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' 
or lower(a.city) like 'hyder%' or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
group by 1,2
order by 1,2;

--

select case when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'trese%' then 'Tresemme'
else 'Others' end as brand,b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where  (lower(a.brand) like 'bru%' or lower(a.brand) like 'coffee%' 
or lower(a.brand) like 'comfor%' or lower(a.brand) like 'dove%' 
or lower(a.brand) like '%surf%' or lower(a.brand) like 'tigi%' 
or lower(a.brand) like 'trese%' )
and (lower(b.region) like '%karna%' or lower(b.region) like '%mahara%' 
or lower(b.region) like '%andhra%')
and a.mobileno not in (select distinct a.mobileno from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
where lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' 
or lower(a.city) like 'hyder%' or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
group by 1,2
order by 1,2;

select case when lower(a.provider) like '%bebeauti%' then 'BB'
when lower(a.provider) like '%pureit%' then 'PI' when lower(a.provider) like '%careli%' then 'CL'
when lower(a.provider) like '%btone%' then 'BT' when lower(a.provider) like '%h2h%' then 'H2H'
when lower(a.provider) like '%digital%' then 'DL' when lower(a.provider) like '%kkt%' then 'KKT'
when lower(a.provider) like '%lakme%' then 'LK' end as provider,
b.region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where (lower(b.region) like '%karna%' or lower(b.region) like '%mahara%' 
or lower(b.region) like '%andhra%')
and a.mobileno not in (select distinct a.mobileno from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
where lower(a.city) like 'bangalu%' or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' or lower(a.city) like 'blore%' 
or lower(a.city) like 'hyder%' or lower(a.city) like 'hydra%' 
or lower(a.city) like 'puna%' or lower(a.city) like 'poona%' 
or lower(a.city) like 'pune%' )
group by 1,2
order by 1,2;

