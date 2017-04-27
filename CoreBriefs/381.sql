--(<6 months, 6-12 months, 12-24 months, >24 months

select Updatedsource,FinalLsm,
case when current_date - lastinteractiondate < 180 then '<6 months'
when current_date - lastinteractiondate >=180 and current_date - lastinteractiondate < 360 then '6-12 months'
when current_date - lastinteractiondate >=360 and current_date - lastinteractiondate < 720 then '12-24 months'
when current_date - lastinteractiondate > 720 then '>24 months'
when lastinteractiondate is null then '>24 months' end as recency,
count(distinct a.best_mobile_number_hash) 
from (select best_mobile_number_hash,Updatedsource,max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal where Updatedsource in ('LK','PI') group by 1,2) a
inner join GAIN_THEORY.LSM3_CombinedSourceSKU_201702 b
on a.best_mobile_number_hash = b.best_mobile_number_hash
where FinalLsm in ('4-7','7+')
group by 1,2,3;



