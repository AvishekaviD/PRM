--and city is not null and pincode is not null

select 'Mobile' KPI
, region
,brand
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency
,count(distinct mobile_number) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%delhi%')
and (lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')
group by 1,2,3,4,5,6

union all

select 'Email' KPI
, region
,brand
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency,count(distinct email) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%delhi%')
and (lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')

group by 1,2,3,4,5,6;



select 'Mobile' KPI
, region
,provider
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency
,count(distinct mobile_number) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%delhi%')
and (lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')

group by 1,2,3,4,5,6

union all

select 'Email' KPI
, region
,provider
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency,count(distinct email) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%delhi%')
and (lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')

group by 1,2,3,4,5,6;


--request 2



select 'Mobile' KPI
, region
,brand
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency
,count(distinct mobile_number) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%maha%')
and (lsm = '4-7' and confidence in ('60','90')) or lsm = '7+')

group by 1,2,3,4,5,6

union all

select 'Email' KPI
, region
,brand
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency,count(distinct email) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%maha%')
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6

union all

select 'Mobile' KPI
, 'Pune' region
,brand
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency
,count(distinct mobile_number) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(city) like '%pun%' or lower(city) like '%poon%' )
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6

union all

select 'Email' KPI
,'Pune' region
,brand
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency,count(distinct email) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(city) like '%pun%' or lower(city) like '%poon%' )
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6;




--provider wise

select 'Mobile' KPI
, region
,provider
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency
,count(distinct mobile_number) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%maha%')
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6

union all

select 'Email' KPI
, region
,provider
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency,count(distinct email) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(region) like '%mumb%' or lower(region) like '%maha%')
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6

union all

select 'Mobile' KPI
, 'Pune' region
,provider
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency
,count(distinct mobile_number) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(city) like '%pun%' or lower(city) like '%poon%' )
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6

union all

select 'Email' KPI
,'Pune' region
,provider
,lsm,confidence
,case
when current_date - lastinetractiondate < 90 then '0-3 Months'
when current_date - lastinetractiondate >= 90 and current_date - lastinetractiondate < 180 then '3-6 Months'
when current_date - lastinetractiondate >= 180 and current_date - lastinetractiondate < 270 then '6-9 Months'
when current_date - lastinetractiondate >= 270 and current_date - lastinetractiondate < 365 then '9-12 Months'
when current_date - lastinetractiondate >= 365 and current_date - lastinetractiondate < 540 then '13-18 Months'
when current_date - lastinetractiondate >= 540 and current_date - lastinetractiondate < 730 then '19-24 Months'
else '>24 Months'
end as recency,count(distinct email) Counts
from "GAIN_THEORY".PRMDashboard_data
where (lower(city) like '%pun%' or lower(city) like '%poon%' )
and lsm in ('4-7','7+')

group by 1,2,3,4,5,6;


