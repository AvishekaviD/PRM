
--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_MOBILE_India360_IN0420DelhiLSM4to7_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,mobile_number mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%del%'
and length(mobile_number) > 0 and lsm in ('4-7')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');


--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_MOBILE_India360_IN0420DelhiLSM7Plus_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,mobile_number mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%del%'
and length(mobile_number) > 0 and lsm in ('7+')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');


--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_MOBILE_India360_IN0420MumbaiLSM4to7_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,mobile_number mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from ( select distinct region,lsm,brand,provider,mobile_number from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%mum%' and length(mobile_number) > 0 and lsm in ('4-7') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
union all
select distinct 'Mumbai' region,lsm,brand,provider,mobile_number from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and lower(city) like '%mum%'
and length(mobile_number) > 0 and lsm in ('4-7') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
) a;



--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_MOBILE_India360_IN0420Mumbai7Plus_20170427_NanditaGodbole.csv";
insert into IN0420_temp 
SELECT distinct 'IN' market
,provider
,mobile_number mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from ( select distinct region,lsm,brand,provider,mobile_number from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%mum%' and length(mobile_number) > 0 and lsm in ('7+') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
union all
select distinct 'Mumbai' region,lsm,brand,provider,mobile_number from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and lower(city) like '%mum%'
and length(mobile_number) > 0 and lsm in ('7+') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
) a;



--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_MOBILE_India360_IN0420PuneLSM4to7_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,mobile_number mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and (lower(city) like '%pune%' or lower(city) like '%poon%') 
and length(mobile_number) > 0 and lsm in ('4-7')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');



--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_MOBILE_India360_IN0420PuneLSM7Plus_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,mobile_number mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value 
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and (lower(city) like '%pune%' or lower(city) like '%poon%') 
and length(mobile_number) > 0 and lsm in ('7+')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');  




--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_EMAIL_India360_IN0420DelhiLSM4to7_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,email mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%del%'
and length(email) > 0 and lsm in ('4-7')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');



--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_EMAIL_India360_IN0420DelhiLSM7Plus_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,email mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%del%'
and length(email) > 0 and lsm in ('7+')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');



--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_EMAIL_India360_IN0420MumbaiLSM4to7_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,email mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from ( select distinct region,lsm,brand,provider,email from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%mum%' and length(email) > 0 and lsm in ('4-7') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
union all
select distinct 'Mumbai' region,lsm,brand,provider,email from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and lower(city) like '%mum%'
and length(email) > 0 and lsm in ('4-7') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
) a;


--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_EMAIL_India360_IN0420MumbaiLSM7Plus_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,email mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from ( select distinct region,lsm,brand,provider,email from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%mum%' and length(email) > 0 and lsm in ('7+') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
union all
select distinct 'Mumbai' region,lsm,brand,provider,email from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and lower(city) like '%mum%'
and length(email) > 0 and lsm in ('7+') 
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin')
) a;


--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_EMAIL_India360_IN0420PuneLSM4to7_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,email mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and (lower(city) like '%pune%' or lower(city) like '%poon%') 
and length(email) > 0 and lsm in ('4-7')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin');


--.EXPORT FILE = "C:\Users\deekshith.kanchan\Desktop\campaigns\420_Kissan\MO_HA_EMAIL_India360_IN0420PuneLSM7Plus_20170427_NanditaGodbole.csv";
SELECT distinct 'IN' market
,provider
,email mobileno
,'1' optin_hierarchy_level
,'Unilever' optin_hierarchy_value
from GAIN_THEORY.PRMDashboard_data
where lower(region) like '%maha%' and (lower(city) like '%pune%' or lower(city) like '%poon%') 
and length(email) > 0 and lsm in ('7+')
and lower(brand) in ('be beautiful','bru','clinic plus','comfort','domex','dove','fair & lovely','huggies'
,'kissan','knorr','lakme','lipton','lux','pepsodent','ponds','pure it','red label'
,'surf','taaza','taj','vaseline','vim','pears','rin'); 
