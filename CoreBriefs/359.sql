--total mumbai numbers
select b.region,count(distinct best_mobile_number_hash) 
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  lower(b.region) like '%mumb%'
group by 1;

--provider wise
select b.region,Updatedsource,count(distinct best_mobile_number_hash) 
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  lower(b.region) like '%mumb%'
and Updatedsource in ('BB','LK','PI','H2H','DL')
group by 1,2;

select b.region,Updatedsource,c.FinalLsm,count(distinct a.best_mobile_number_hash) 
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
inner join LSM3_CombinedSourceSKU_20170206 c
on a.best_mobile_number_hash = c.best_mobile_number_hash
where  lower(b.region) like '%mumb%'
and Updatedsource not in ('LK','BB')
group by b.region,Updatedsource,c.FinalLsm;

--lsm
select region,FinalLsm,count(best_mobile_number_hash) 
from GAIN_THEORY.LSM3_CombinedSourceSKU_20170206 a
where  lower(region) like '%mumb%'
group by region,FinalLsm;



--bb

select b.region,Updatedsource,'',count(distinct best_mobile_number_hash) 
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  lower(b.region) like '%mumb%'
and Updatedsource in ('BB')
group by 1,2;

--lk 

select b.region,Updatedsource,
case when current_date - lastinteractiondate <= 365 then 'Less than a year'
when (current_date - lastinteractiondate) between 366 and 730 then 'Between 1 and 2 year'
when (current_date - lastinteractiondate > 730) then 'More than 2 years'
when lastinteractiondate is null then 'More than 2 years'
end recency,
count(distinct best_mobile_number_hash) 
from (select best_mobile_number_hash, region_lookup_number, Updatedsource,max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal
where Updatedsource in ('LK')
group by best_mobile_number_hash, region_lookup_number, Updatedsource) a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  lower(b.region) like '%mumb%'
and Updatedsource in ('LK')
group by 1,2,3;

--PI
select b.region,Updatedsource,c.FinalLsm,count(distinct a.best_mobile_number_hash) 
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
inner join LSM3_CombinedSourceSKU_20170206 c
on a.best_mobile_number_hash = c.best_mobile_number_hash
where  lower(b.region) like '%mumb%'
and Updatedsource in ('PI')
and c.FinalLsm in ('4-7','7+')
group by b.region,Updatedsource,c.FinalLsm;

--H2H, DL
select b.region,Updatedsource,c.FinalLsm,count(distinct a.best_mobile_number_hash) 
from GAIN_THEORY.PRMActiveInactiveOriginal a 
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
inner join LSM3_CombinedSourceSKU_20170206 c
on a.best_mobile_number_hash = c.best_mobile_number_hash
where  lower(b.region) like '%mumb%'
and Updatedsource in ('DL','H2H')
and lower(updated_Brand_Name) in ('vim','sunlight','surf excel','surf','comfort','wheel','rin','magic rinse','domex')
and c.FinalLsm in ('4-7','7+')
group by b.region,Updatedsource,c.FinalLsm;