
--tlc bihar
475247
 select count(distinct best_mobile_number_hash) from (
 select distinct best_mobile_number_hash from PRM.h2h_transaction a
 inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 where lower(b.region) like '%bihar%' and lower(a.source_file_name) like '%tlc%'
 union all  select distinct best_mobile_number_hash from PRM.mindtree_data a
 inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
  where lower(b.region) like '%bihar%' and lower(a.source_file_name) like '%tlc%') a;
  
--tlc up
 select region,count(distinct best_mobile_number_hash) from (
 select distinct b.region,best_mobile_number_hash from PRM.h2h_transaction a
 inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 where lower(b.region) like '%uttar%' and lower(a.source_file_name) like '%tlc%'
 union all  select distinct b.region,best_mobile_number_hash from PRM.mindtree_data a
 inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
  where lower(b.region) like '%uttar%' and lower(a.source_file_name) like '%tlc%') a
  group by 1;
  
  

select distinct city from (select distinct city from PRM.h2h_transaction a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 where lower(b.region) like '%bihar%' and length(city) > 0
 union all select distinct city from PRM.h2h_transaction a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
 where lower(b.region) like '%bihar%' and length(city) > 0) a ;

 
  --region bihar
  
  select distinct city,count(distinct mobile_number) counts 
 from GAIN_THEORY.PRMDashboard_data
 where lower(region) like '%bihar%'
 group by city;
 
   select distinct city,count(distinct mobile_number) counts 
 from GAIN_THEORY.PRMDashboard_data
 where lower(region) like '%uttar%'
 group by city;
 