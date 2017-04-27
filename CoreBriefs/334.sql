select case
when lower(region) like '%uttar%' then 'Uttar Pradesh'
when lower(region) like '%bengal%' then 'West bengal'
when lower(region) like '%kol%' then 'West bengal'
when lower(region) like '%biha%' then 'Bihar'
when lower(region) like '%raja%' then 'Rajasthan'
when lower(region) like '%oris%' then 'Orissa'
when lower(region) like '%madhya%' then 'Madhya Pradesh'
end as regions
, count( distinct best_mobile_number_hash) 
from GAIN_THEORY.LSM3_CombinedSourceSKU
where LSM3_CombinedSourceSKU.FinalLSM = '0-3'
and (lower(region) like '%uttar%'
or lower(region) like '%bengal%'
or lower(region) like '%kol%'
or lower(region) like '%biha%'
or lower(region) like '%raja%'
or lower(region) like '%oris%'
or lower(region) like '%madhya%')
group by regions
order by regions;

