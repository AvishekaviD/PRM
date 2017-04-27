
create table IN0329_tmp
(best_mobile_number_hash varchar(255));

insert into IN0329_tmp
select distinct best_mobile_number_hash
from (
select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union select distinct best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number from PRM.mindtree_data
union select best_mobile_number_hash,city,brand brand_name,region_lookup_number from PRM.h2h_transaction
union  select distinct best_mobile_number_hash,'' as city,campaign_brand as brand_name,region_lookup_number from PRM.bt_campaign a
inner join PRM.bt_entry b on a.campaign_id = b.campaign_id
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM in ('0-3','4-7'))
and (lower(b.region) like '%bihar%' or lower(b.region) like '%uttar%'
or lower(b.region) like '%chhat%' or lower(b.region) like '%raja%' or lower(b.region) like '%maha%')
and b.region <> 'Mumbai';

select 'LSM 4-7 - all KKT' LSM,b.region
,count(distinct best_mobile_number_hash) counts
from (select best_mobile_number_hash,region_lookup_number, max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal
where  Updatedsource <> 'KKT' 
and best_mobile_number_hash not in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal where Updatedsource = 'KKT')
group by best_mobile_number_hash,region_lookup_number) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU_20170206 
where FinalLSM = '4-7' and finalconfidence = '30')
and (lower(b.region) like '%bihar%' or lower(b.region) like '%uttar%'
or lower(b.region) like '%chhat%' or lower(b.region) like '%raja%' or lower(b.region) like '%maha%')
and b.region <> 'Mumbai'
group by 2

union all

select 'LSM 0-3 - all KKT' LSM,b.region
,count(distinct best_mobile_number_hash) counts
from (select best_mobile_number_hash,region_lookup_number, max(lastinteractiondate) lastinteractiondate
from GAIN_THEORY.PRMActiveInactiveOriginal
where  Updatedsource <> 'KKT' 
and best_mobile_number_hash not in (select distinct best_mobile_number_hash 
from GAIN_THEORY.PRMActiveInactiveOriginal where Updatedsource = 'KKT')
group by best_mobile_number_hash,region_lookup_number) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU_20170206 
where FinalLSM = '0-3')
and (lower(b.region) like '%bihar%' or lower(b.region) like '%uttar%'
or lower(b.region) like '%chhat%' or lower(b.region) like '%raja%' or lower(b.region) like '%maha%')
and b.region <> 'Mumbai'
group by 2

union all

select 'LSM 4-7 - IN0329' LSM,b.region,count(distinct best_mobile_number_hash) counts
from (select best_mobile_number_hash,region_lookup_number from GAIN_THEORY.PRMActiveInactiveOriginal where  Updatedsource <> 'KKT' and best_mobile_number_hash not in (select distinct best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal where Updatedsource = 'KKT')) 
a inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5 
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU_20170206  where FinalLSM = '4-7' and finalconfidence = '30')
and (lower(b.region) like '%bihar%' or lower(b.region) like '%uttar%' or lower(b.region) like '%chhat%' or lower(b.region) like '%raja%' or lower(b.region) like '%maha%') and b.region <> 'Mumbai'
and best_mobile_number_hash not in (select distinct best_mobile_number_hash from GAIN_THEORY.IN0329_tmp)
group by 2

union all

select 'LSM 0-3 - IN0329' LSM,b.region,count(distinct best_mobile_number_hash) counts
from (select best_mobile_number_hash,region_lookup_number from GAIN_THEORY.PRMActiveInactiveOriginal where  Updatedsource <> 'KKT' and best_mobile_number_hash not in (select distinct best_mobile_number_hash from GAIN_THEORY.PRMActiveInactiveOriginal where Updatedsource = 'KKT')) 
a inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5 
where best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU_20170206  where FinalLSM = '0-3')
and (lower(b.region) like '%bihar%' or lower(b.region) like '%uttar%' or lower(b.region) like '%chhat%' or lower(b.region) like '%raja%' or lower(b.region) like '%maha%') and b.region <> 'Mumbai'
and best_mobile_number_hash not in (select distinct best_mobile_number_hash from GAIN_THEORY.IN0329_tmp)
group by 2
;








