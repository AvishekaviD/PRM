select case when lower(region) like '%uttar%' then 'Uttar Pradesh'
when lower(region) like '%madhya%' then 'Madhya Pradesh'
end as regions,FinalLSM,count(distinct LSM3_CombinedSourceSKU.best_mobile_number_hash)
from GAIN_THEORY.LSM3_CombinedSourceSKU
where (lower(region) like '%uttar%' or lower(region) like '%madhya%')
and FinalLSM in ('0-3','4-7')
group by regions,FinalLSM;
