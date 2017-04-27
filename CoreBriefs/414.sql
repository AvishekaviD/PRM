select category,lsm,count(distinct mobile_number) from IN0414_data
group by 1,2;

--MO_HA_MOBILE_India360_IN0414MetroLSM0to3_20170422_NehaSharma.csv
 select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Metro' and lsm = '0-3' ;
 
 --MO_HA_MOBILE_India360_IN0414MetroLSM4to7_20170422_NehaSharma.csv
  select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Metro' and lsm = '4-7' ;

--MO_HA_MOBILE_India360_IN0414MetroLSM7plus_20170422_NehaSharma.csv
 select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Metro' and lsm = '7+' ;

--MO_HA_MOBILE_India360_IN0414TownLSM0to3_20170422_NehaSharma.csv
 select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Town' and lsm = '0-3' ;
 
 --MO_HA_MOBILE_India360_IN0414TownLSM4to7_20170422_NehaSharma.csv
  select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Town' and lsm = '4-7' ;

--MO_HA_MOBILE_India360_IN0414TownLSM7plus_20170422_NehaSharma.csv
 select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Town' and lsm = '7+' ;

--MO_HA_MOBILE_India360_IN0414RuralLSM0to3_20170422_NehaSharma.csv
 select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Rural' and lsm = '0-3' ;
 
 --MO_HA_MOBILE_India360_IN0414RuralLSM4to7_20170422_NehaSharma.csv
  select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Rural' and lsm = '4-7' ;

--MO_HA_MOBILE_India360_IN0414RuralLSM7plus_20170422_NehaSharma.csv
 select distinct 'IN' as market
 ,provider
 , mobile_number as mobileno
 , '1' as optin_hierarchy_level
 , 'Unilever' as optin_hierarchy_value 
 from IN0414_data
where category = 'Rural' and lsm = '7+' ;

