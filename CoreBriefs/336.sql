MO_HA_Thinkwalnut_IN0336AndhraPradesh_20161125_BhaktiShah
MO_HA_Thinkwalnut_IN0336Karnataka_20161125_BhaktiShah
MO_HA_Thinkwalnut_IN0336Tamilnadu_20161125_BhaktiShah

   create multiset table RosesRTD(
   market varchar(20),
   provider varchar(20),
   mobileno varchar(300),
   optin_hierarchy_level varchar(5),optin_hierarchy_value varchar(50)
   ,region varchar(100)
);
 
delete from  "GAIN_THEORY".RosesRTD;
   
   insert into "GAIN_THEORY".RosesRTD
select distinct 'IN','BT', best_mobile_number_hash,'1','Unilever',region from(
   select region, best_mobile_number_hash,count(*)"Counts" from PRM.bt_entry a
   inner join PRM.ref_mobile_lookup b on a.region_lookup_number=b.lookup_prefix5
where a.campaign_id in ( '2200','2120','2176','2195')
   and ((entry_status= 0 AND error_code= 0) OR (entry_status= -1 AND error_code= -9) OR 
   (entry_status= 0 and error_code= -15))
   and region in ('Andhra Pradesh','Karnataka')
   group by region, best_mobile_number_hash) as a where counts >'1';
   
   
 insert into "GAIN_THEORY".RosesRTD
select distinct 'IN','BT', best_mobile_number_hash,'1','Unilever','Tamilnadu' region from(
   select region, best_mobile_number_hash,count(*)"Counts" from PRM.bt_entry a
   inner join PRM.ref_mobile_lookup b on a.region_lookup_number=b.lookup_prefix5
where a.campaign_id in ( '2200','2120','2176','2195')
   and ((entry_status= 0 AND error_code= 0) OR (entry_status= -1 AND error_code= -9) OR 
   (entry_status= 0 and error_code= -15))
   and region in ('Chennai','Tamilnadu')
   group by region, best_mobile_number_hash) as a where counts >'1';
   
   
   select market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value
   from "GAIN_THEORY".RosesRTD
   where region = 'Andhra Pradesh';
   
   select market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value
   from "GAIN_THEORY".RosesRTD
   where region = 'Karnataka';
   
   select market,provider,mobileno,optin_hierarchy_level,optin_hierarchy_value
   from "GAIN_THEORY".RosesRTD
   where region in ('Chennai','Tamilnadu');
