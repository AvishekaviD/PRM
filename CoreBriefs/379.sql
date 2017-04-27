
--gender 

create table IN0379_region_gender
(region varchar(255),gender varchar(255),best_mobile_number_hash varchar(255)
);

insert into IN0379_region_gender 
select 
    distinct region, gender,a.best_mobile_number_hash
from ( select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then 'Male'
    when a.option_provided = 2 then 'Female'
    else 'Not specified' end as gender
from PRM.kkt_cdr_contest_trans_ST a
left join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9
union
 select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then 'Male'
    when a.option_provided = 2 then 'Female'
    else 'Not specified' end as gender 
from PRM.kkt_cdrl_contest a
left join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9) as a;



--age gender

create table IN0379_age_gender
(region varchar(255),age_group varchar(255),gender varchar(255),best_mobile_number_hash varchar(255)
);

insert into IN0379_age_gender
 select distinct region, age_group,gender,a.best_mobile_number_hash
from ( select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then '<15'
    when a.option_provided = 2 then '15-25'
    when a.option_provided = 3 then '25-35'
    else '>35' end as age_group
from PRM.kkt_cdr_contest_trans_ST a
left join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 10
union
 select 
    distinct a.best_mobile_number_hash,'KKT' as brand
    , b.region,case 
    when a.option_provided = 1 then '<15'
    when a.option_provided = 2 then '15-25'
    when a.option_provided = 3 then '25-35'
    else '>35' end as age_group
from PRM.kkt_cdrl_contest a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 10) as a
inner join ( select 
    distinct a.best_mobile_number_hash
    ,case when a.option_provided = 1 then 'Male'
    when a.option_provided = 2 then 'Female'
    else 'Not specified' end as gender
from PRM.kkt_cdr_contest_trans_ST a
where contest_file_id = 9
union
 select 
    distinct a.best_mobile_number_hash
    ,case when a.option_provided = 1 then 'Male'
    when a.option_provided = 2 then 'Female'
    else 'Not specified' end as gender 
from PRM.kkt_cdrl_contest a
where contest_file_id = 9) as b
on a.best_mobile_number_hash =b.best_mobile_number_hash
where lower(region) like '%bihar%' or lower(region) like '%uttar%';

select distinct * from PRM.kkt_contestmaster_lookup141009
where contest_master_id = 10;



--brands
create table IN0379_brand_region
(region varchar(255),provider varchar(255),brand varchar(255),best_mobile_number_hash varchar(255)
);


insert into IN0379_brand_region
select distinct b.region,a.Updatedsource,
case
when lower(a.updated_Brand_Name) like '%3%rose%' then '3 Roses' 
when lower(a.updated_Brand_Name) like '%close%up%' then 'Close Up'
When lower(a.updated_Brand_Name) like '%kissan%' then 'Kissan' 
When lower(a.updated_Brand_Name) like '%lifeb%' then 'Lifebuoy' 
When lower(a.updated_Brand_Name) like '%pe%soden%' then 'Pepsodent' 
When lower(a.updated_Brand_Name) like '%red%label%' then 'Red Label'
When lower(a.updated_Brand_Name) like '%rin%' then 'Rin'
When lower(a.updated_Brand_Name) like '%sunlight%' then 'Sunlight'
When lower(a.updated_Brand_Name) like '%taaza%' then 'Taaza' 
When lower(a.updated_Brand_Name) like '%vim%' then 'Vim' 
when lower(a.updated_Brand_Name) like '%wheel%' then 'Wheel' 
else 'others' end Brands,a.best_mobile_number_hash
from GAIN_THEORY.PRMActiveInactiveOriginal a
join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.updated_Brand_Name) like '%3%rose%' or lower(a.updated_Brand_Name) like '%close%up%' or lower(a.updated_Brand_Name) like '%kissan%'
or lower(a.updated_Brand_Name) like '%lifeb%' or lower(a.updated_Brand_Name) like '%pe%soden%' or lower(a.updated_Brand_Name) like '%red%label%'
or lower(a.updated_Brand_Name) like '%rin%' or lower(a.updated_Brand_Name) like '%sunlight%' or lower(a.updated_Brand_Name) like '%taaza%'
or lower(a.updated_Brand_Name) like '%vim%' or lower(a.updated_Brand_Name) like '%wheel%');

-- lower(b.region) in ('uttar pradesh (east)','uttar pradesh (west) and uttarakhand')

 


--extraction

--IN0379_region_gender 54
--Female	Male	Not specified
/*
Andhra Pradesh
Assam
Bihar and Jharkhand
Delhi
Haryana
Jammu and Kashmir
Karnataka
Kolkata
Madhya Pradesh and Chhattisgarh
Maharashtra
Mumbai
North East
null
Orissa
Punjab
Rajasthan
Uttar Pradesh (East) 
Uttar Pradesh (West) and Uttarakhand
West Bengal & Andaman and Nicobar Is.
*/

--MO_HA_Thinkwalnut_IN0379_20170301_SrimoyeeJoardar
select distinct region from IN0379_region_gender;

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_region_gender
where region = 'West Bengal & Andaman and Nicobar Is.'
and gender = 'Female';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_region_gender
where region = 'West Bengal & Andaman and Nicobar Is.'
and gender = 'Male';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_region_gender
where region = 'Assam'
and gender = 'Not specified';


--IN0379_age_gender 36
--Bihar and Jharkhand            
--Uttar Pradesh (East) 
--Uttar Pradesh (West) and Uttarakhand
--age_group
--MO_HA_Thinkwalnut_IN0379_20170302_SrimoyeeJoardar
--    when a.option_provided = 1 then '<15'
--    when a.option_provided = 2 then '15-25'
--    when a.option_provided = 3 then '25-35'
--    else '>35' end as age_group


select region,gender,age_group,count(distinct best_mobile_number_hash)
from IN0379_age_gender
group by 1,2,3
order by 1,2,3;

select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Female'
and age_group = '<15';

select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Female'
and age_group = '15-25';

select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Female'
and age_group = '25-35';

select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Female'
and age_group = '>35';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Male'
and age_group = '<15';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Male'
and age_group = '15-25';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Male'
and age_group = '25-35';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Male'
and age_group = '>35';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Not specified'
and age_group = '<15';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Not specified'
and age_group = '15-25';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Not specified'
and age_group = '25-35';

 select 
    distinct 'IN' as market
    ,'KKT' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_age_gender
where region = 'Uttar Pradesh (West) and Uttarakhand'
and gender = 'Not specified'
and age_group = '>35';




--Uttar Pradesh (East)
--Uttar Pradesh (West) and Uttarakhand

select distinct region,brand,count(distinct best_mobile_number_hash) from IN0379_brand_region
where lower(region) like '%uttar%'
group by 1,2;



--IN0379_brand_region 22,11

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = '3 Roses';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Close Up';

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Kissan';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Lifebuoy';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Pepsodent';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Red Label';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Rin';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Sunlight';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Taaza';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Vim';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (East)'
and brand = 'Wheel';


select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = '3 Roses';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Close Up';

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Kissan';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Lifebuoy';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Pepsodent';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Red Label';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Rin';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Sunlight';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Taaza';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Vim';


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where region = 'Uttar Pradesh (West) and Uttarakhand'
and brand = 'Wheel';




select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand ='3 Roses'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Close Up','Kissan','Lifebuoy','Pepsodent','Red Label','Rin','Sunlight','Taaza','Vim','Wheel'));

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand ='Close Up'
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in (	'Kissan','Lifebuoy','Pepsodent','Red Label','Rin','Sunlight','Taaza','Vim','Wheel','3 Roses'));

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand ='Kissan'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Lifebuoy','Pepsodent','Red Label','Rin','Sunlight','Taaza','Vim','Wheel','3 Roses','Close Up'));


select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand ='Lifebuoy'
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in (	'Pepsodent','Red Label','Rin','Sunlight','Taaza','Vim','Wheel','3 Roses','Close Up','Kissan'));


 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand = 'Pepsodent'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Red Label','Rin','Sunlight','Taaza','Vim','Wheel','3 Roses','Close Up','Kissan','Lifebuoy'));

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand = 'Red Label'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Rin','Sunlight','Taaza','Vim','Wheel','3 Roses','Close Up','Kissan','Lifebuoy','Pepsodent'));

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand = 'Rin'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Sunlight','Taaza','Vim','Wheel','3 Roses','Close Up','Kissan','Lifebuoy','Pepsodent','Red Label'));

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand = 'Sunlight'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Taaza','Vim','Wheel','3 Roses','Close Up','Kissan','Lifebuoy','Pepsodent','Red Label','Rin'));

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand  = 'Taaza'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Vim','Wheel','3 Roses','Close Up','Kissan','Lifebuoy','Pepsodent','Red Label','Rin','Sunlight'));

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand = 'Vim'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('Wheel','3 Roses','Close Up','Kissan','Lifebuoy','Pepsodent','Red Label','Rin','Sunlight','Taaza'));

 select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0379_brand_region
where 
 brand = 'Wheel'	
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from IN0379_brand_region where brand in ('3 Roses','Close Up','Kissan','Lifebuoy','Pepsodent','Red Label','Rin','Sunlight','Taaza','Vim'));