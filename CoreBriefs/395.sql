select case when lower(a.brand) like '%3%roses%' then '3 Roses'
when lower(a.brand) like '%axe%' then 'Axe'
when lower(a.brand) like '%be%be%' then 'Be Beautiful'
when lower(a.brand) like '%bru%' then 'Bru'
when lower(a.brand) like '%coffee%' then 'Bru'
when lower(a.brand) like '%clear%' then 'Clear'
when lower(a.brand) like '%clinic%' then 'Clinic Plus'
when lower(a.brand) like '%close%up%' then 'Close UP'
when lower(a.brand) like '%comfort%' then 'Comfort'
when lower(a.brand) like '%cornet%' then 'Cornetto'
when lower(a.brand) like '%dome%' then 'Domex'
when lower(a.brand) like '%dove%' then 'Dove'
when lower(a.brand) like '%fal%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like '%f%&%l%' then 'Fair & Lovely'
when lower(a.brand) like '%huggi%' then 'Huggies'
when lower(a.brand) like '%kissan%' then 'Kissan'
when lower(a.brand) like '%ketch%' then 'Kissan'
when lower(a.brand) like '%kkd%' then 'KKD'
when lower(a.brand) like '%kkt%' then 'KKT'
when lower(a.brand) like '%knorr%' then 'Knorr'
when lower(a.brand) like '%kwality%' then 'Kwality Walls'
when lower(a.brand) like '%lakme%' then 'Lakme'
when lower(a.brand) like '%lb%' then 'Lifebuoy'
when lower(a.brand) like '%life%' then 'Lifebuoy'
when lower(a.brand) like '%lipton%' then 'Lipton'
when lower(a.brand) like '%lux%' then 'Lux'
when lower(a.brand) like '%rinse%' then 'Magic Rinse'
when lower(a.brand) like '%magic%' then 'Magic Rinse'
when lower(a.brand) like '%mdm%' then 'MDM'
when lower(a.brand) like 'Others' then 'Others'
when lower(a.brand) like '%paddle%' then 'Paddlepop'
when lower(a.brand) like '%pears%' then 'Pears'
when lower(a.brand) like '%pep%' then 'Pepsodent'
when lower(a.brand) like '%pond%' then 'Ponds'
when lower(a.brand) like '%pure%it%' then 'Pure IT'
when lower(a.brand) like '%red%label%' then 'Red Label'
when lower(a.brand) like '%rin%' then 'Rin'
when lower(a.brand) like '%santoo%' then 'Santoor'
when lower(a.brand) like '%sasb%' then 'SASB'
when lower(a.brand) like '%shakti%' then 'Shakti'
when lower(a.brand) like 'SUNLIGHT' then 'Sunlight'
when lower(a.brand) like '%sunlight%' then 'Sunlight'
when lower(a.brand) like '%sunsilk%' then 'Sunsilk'
when lower(a.brand) like '%surf%' then 'Surf'
when lower(a.brand) like '%taaza%' then 'Taaza'
when lower(a.brand) like '%taj%' then 'Taj'
when lower(a.brand) like '%ufs%' then 'UFS'
when lower(a.brand) like '%vas%' then 'Vaseline'
when lower(a.brand) like '%petro%' then 'Vaseline'
when lower(a.brand) like '%perto%' then 'Vaseline'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like '%wheel%' then 'Wheel' 
when lower(a.brand) like '%wl%' then 'Wheel' 
when lower(a.brand) like '%rex%' then 'Rexona' 
when lower(a.brand) like '%bree%' then 'Breeze' 
when lower(a.brand) like '%bryl%' then 'Brylcream' 
when lower(a.brand) like '%hamam%' then 'Hamam'
when lower(a.brand) like '%kw%' then 'Kwality Walls'
when lower(a.brand) like '%liril%' then 'Liril'
when lower(a.brand) like '%trese%' then 'Tresemme'
else a.brand end brand
,b.region,c.FinalLsm, c.finalConfidence,count(distinct a.best_mobile_number_hash)
from ( select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_call
 where listening_tree_level1 like '%Query%'
 union all 
  select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_call_backup_14062016
 where listening_tree_level1 like '%Query%'
  union all 
  select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_call_pti748
 where listening_tree_level1 like '%Query%'
  union all 
  select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_call_till_dec2015
 where listening_tree_level1 like '%Query%'
  union all 
  select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_calls_01Mar2014_30jun2014
 where listening_tree_level1 like '%Query%'
  union all 
  select distinct cl_brand,region_lookup_number,best_mobile_number_hash from PRM.cl_calls_2012_2013
 where cl_call_classification like '%Query%'
  union all 
  select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_calls_2013_2014
 where listening_tree_level1 like '%Query%'
  union all 
  select distinct brand,region_lookup_number,best_mobile_number_hash from PRM.cl_calls_aug_sep_2014
 where listening_tree_level1 like '%Query%') a 
 inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 inner join GAIN_THEORY.LSM3_CombinedSourceSKU_201702 c
 on a.best_mobile_number_hash = c.best_mobile_number_hash
 where lower(b.region) like '%uttar%'
 and c.FinalLsm in ('4-7','7+')
 group by 1,2,3,4;