select top 100 * from IN0357_data;

select distinct brand from IN0357_data;

and lower(brand) like '%vim%'
and lower(brand) like '%surf%'

city in ('Bengaluru','Bangalore')
city = 'Mumbai'
city = 'Delhi'

select distinct city from IN0357_data;

and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


confidence 30,60,90

lower(brand) like '%surf%'  
lower(brand) like '%vim%' 


create  table IN0357_data
(provider varchar(255),city varchar(255),brand varchar(255),best_mobile_number_hash varchar(255));


--dl bangalore
insert into IN0357_data
select distinct 'DL' provider,'Bangalore' as Circles,brand_name,best_mobile_number_hash
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(brand_name) like '%kissan%' 
or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like '%vim%'
or lower(brand_name) like '%surf%'
) 
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from (select distinct best_mobile_number_hash,city from PRM.mindtree_data
union select distinct best_mobile_number_hash,city from PRM.h2h_transaction
union select distinct best_mobile_number_hash,city from PRM.bb_registration
union select distinct best_mobile_number_hash,city from PRM.lk_customer
) a
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' ));


--dl other regiom
insert into IN0357_data
select distinct 'DL' provider,case when lower(a.city) like 'bangalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'banagal%' then 'Bengaluru'
when lower(a.city) like 'bengalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'bangl%' then 'Bengaluru'
when lower(a.city) like 'bengl%' then 'Bengaluru'
when lower(a.city) like 'bango%' then 'Bengaluru'
when lower(a.city) like 'bangu%' then 'Bengaluru'
when lower(a.city) like 'blr%' then 'Bengaluru'
when lower(a.city) like 'bnag%' then 'Bengaluru'
when lower(a.city) like 'blore%' then 'Bengaluru'
when lower(a.city) like 'hyder%' then 'Hyderbad'
when lower(a.city) like 'hydra%' then 'Hyderbad'
when lower(a.city) like 'puna%' then 'Pune'
when lower(a.city) like 'poona%' then 'Pune'
when lower(a.city) like 'pune%' then 'Pune'
when lower(b.region) like '%delh%' then 'Delhi'
when lower(b.region) like '%kolka%' then 'Kolkata'
when lower(b.region) like '%mumb%' then 'Mumbai'
when lower(b.region) like '%chenn%' then 'Chennai'
else '' end as Circles
,brand_name,best_mobile_number_hash
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%'  
or b.region in ('Delhi','Mumbai'))
and (lower(brand_name) like '%kissan%' 
or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like '%vim%'
or lower(brand_name) like '%surf%'
) ;

--h2h all
--h2h
insert into IN0357_data
select distinct 'HH' provider,case when lower(a.city) like 'bangalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'banagal%' then 'Bengaluru'
when lower(a.city) like 'bengalu%' then 'Bengaluru'
when lower(a.city) like 'bangalo%' then 'Bengaluru'
when lower(a.city) like 'bangl%' then 'Bengaluru'
when lower(a.city) like 'bengl%' then 'Bengaluru'
when lower(a.city) like 'bango%' then 'Bengaluru'
when lower(a.city) like 'bangu%' then 'Bengaluru'
when lower(a.city) like 'blr%' then 'Bengaluru'
when lower(a.city) like 'bnag%' then 'Bengaluru'
when lower(a.city) like 'blore%' then 'Bengaluru'
when lower(b.region) like '%delh%' then 'Delhi'
when lower(b.region) like '%kolka%' then 'Kolkata'
when lower(b.region) like '%mumb%' then 'Mumbai'
when lower(b.region) like '%chenn%' then 'Chennai'
else '' end as Circles
,brand_name,best_mobile_number_hash
from (select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.mindtree_data
union select best_mobile_number_hash,brand brand_name,city,region_lookup_number,date_created from PRM.h2h_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%'  
or b.region in ('Delhi','Mumbai'))
and (lower(brand_name) like '%kissan%' 
or lower(brand_name) like '%ketchup%' 
or lower(brand_name) like '%vim%'
or lower(brand_name) like '%surf%');


--bt all

insert into IN0357_data
select distinct 'BT' provider,
case when lower(d.region) like '%delh%' then 'Delhi'
when lower(d.region) like '%kolka%' then 'Kolkata'
when lower(d.region) like '%mumb%' then 'Mumbai'
when lower(d.region) like '%chenn%' then 'Chennai'
end as circle,c.product_name,a.best_mobile_number_hash
from PRM.bt_entry a inner join PRM.bt_response b
on a.entry_id = b.entry_id
inner join PRM.bt_product c on b.product_id = c.product_id
inner join PRM.ref_mobile_lookup d
on a.region_lookup_number = d.lookup_prefix5
where (lower(product_name) like '%kissan%' 
or lower(product_name) like '%ketchup%' 
or lower(product_name) like '%vim%'
or lower(product_name) like '%surf%')
and d.region in ('Delhi','Mumbai');


insert into IN0357_data
select distinct 'BT' provider,'Bengaluru' circle,c.product_name,a.best_mobile_number_hash
from PRM.bt_entry a inner join PRM.bt_response b
on a.entry_id = b.entry_id
inner join PRM.bt_product c on b.product_id = c.product_id
where (lower(product_name) like '%kissan%' 
or lower(product_name) like '%ketchup%' 
or lower(product_name) like '%vim%'
or lower(product_name) like '%surf%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash
from (select distinct best_mobile_number_hash,city from PRM.mindtree_data
union select distinct best_mobile_number_hash,city from PRM.h2h_transaction
union select distinct best_mobile_number_hash,city from PRM.bb_registration
union select distinct best_mobile_number_hash,city from PRM.lk_customer
) a
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' ));


--lsm 7+ confidence 30 surf bengaluru

select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

--LSM 7+ confidence 60 surf bengaluru
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');.

--lSM 7+ confidence 90 surf bengaluru

select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
and (lower(brand_name) like '%surf%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');

--lsm 7+ confidence 30 vim bengaluru
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
lower(brand_name) like '%vim%' 
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

--lsm 7+ confidence 60 bengaluru vim
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
lower(brand_name) like '%vim%' 
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

-- lsm 7+ confidence 90 bengaluru vim
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
union select distinct best_mobile_number_hash,'' as city,brand_name,region_lookup_number from PRM.dl_all_campaigns
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where (lower(a.city) like 'bangalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'banagal%' 
or lower(a.city) like 'bengalu%' 
or lower(a.city) like 'bangalo%' 
or lower(a.city) like 'bangl%' 
or lower(a.city) like 'bengl%' 
or lower(a.city) like 'bango%' 
or lower(a.city) like 'bangu%' 
or lower(a.city) like 'blr%' 
or lower(a.city) like 'bnag%' 
or lower(a.city) like 'blore%' )
lower(brand_name) like '%vim%' 
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


--lsm 7+ confidence 30 mumbai surf

select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%surf%'  )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

--lsm 7+ confidence 60 mumbai surf
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%surf%'  )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

--lsm 7+ confidence 90 mumbaisurf
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%surf%'  )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


--lsm 7+ confidence 30 mumbai vim 
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%vim%' )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');


--lsm 7+ confidence 60 mumbai vim 
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%vim%' )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');


--lsm 7+ confidence 90 mumbai vim 
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Mumbai')
and (lower(brand_name) like '%vim%' )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


--lsm 7+ confidence 30 delhi vim
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%vim%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

--lsm 7+ confidence 60 delhi vim
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%vim%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

--lsm 7+ confidence 90 delhi vim
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%vim%')
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');

--lsm 7+ confidence 30 delhi surf
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%surf%'  )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');


--lsm 7+ confidence 60 delhi surf
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%surf%'  )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');


--lsm 7+ confidence 90 delhi surf
select 
    distinct 'IN' as market
    , 'DL' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.mgage_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.imimobile_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.thinkwalnut_tier3
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dloz_tier3
union 
select best_mobile_number_hash,circle as city,'Rin' brand_name,region_lookup_number from PRM.dl197_rincareeracademy_registration
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dl197_transaction
union select distinct best_mobile_number_hash,circle as city,brand_name,region_lookup_number from PRM.dlts_transaction
union select distinct best_mobile_number_hash,circle as city,brand brand_name,region_lookup_number from PRM.dlzd_transaction
) a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where  b.region in ('Delhi')
and (lower(brand_name) like '%surf%'  )
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


--surf

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city in ('Bengaluru','Bangalore')
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city in ('Bengaluru','Bangalore')
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city in ('Bengaluru','Bangalore')
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');



select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Mumbai'
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Mumbai'
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Mumbai'
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Delhi'
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Delhi'
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Delhi'
and lower(brand) like '%surf%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');



--vim


select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city in ('Bengaluru','Bangalore')
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city in ('Bengaluru','Bangalore')
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city in ('Bengaluru','Bangalore')
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');



select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Mumbai'
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Mumbai'
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Mumbai'
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Delhi'
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '30');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Delhi'
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '60');

select 
    distinct 'IN' as market
    ,provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from IN0357_data
where city = 'Delhi'
and lower(brand) like '%vim%'
and best_mobile_number_hash in (select distinct best_mobile_number_hash from GAIN_THEORY.LSM3_CombinedSourceSKU 
where LSM3_CombinedSourceSKU.FinalLSM = '7+' and finalconfidence = '90');


 
select * from GAIN_THEORY.MO_HA_India360_IN0321Bangalore6months_20161106_ArvindRamachandran
where mobileno not in (select distinct best_mobile_number_hash
from IN0357_data
where (lower(brand) like '%vim%' or lower(brand) like '%surf%'));

select * from GAIN_THEORY.MO_HA_India360_IN0321Bangalore6to12months_20161106_ArvindRamachandran
where mobileno not in (select distinct best_mobile_number_hash
from IN0357_data
where (lower(brand) like '%vim%' or lower(brand) like '%surf%'));

select * from GAIN_THEORY.MO_HA_India360_IN0321Delhi6months_20161106_ArvindRamachandran
where mobileno not in (select distinct best_mobile_number_hash
from IN0357_data
where (lower(brand) like '%vim%' or lower(brand) like '%surf%'));

select * from GAIN_THEORY.MO_HA_India360_IN0321Delhi6to12months_20161106_ArvindRamachandran
where mobileno not in (select distinct best_mobile_number_hash
from IN0357_data
where (lower(brand) like '%vim%' or lower(brand) like '%surf%'));

select * from GAIN_THEORY.MO_HA_India360_IN0321Mumbai6months_20161106_ArvindRamachandran
where mobileno not in (select distinct best_mobile_number_hash
from IN0357_data
where (lower(brand) like '%vim%' or lower(brand) like '%surf%'));

select * from GAIN_THEORY.MO_HA_India360_IN0321Mumbai6to12months_20161106_ArvindRamachandran
where mobileno not in (select distinct best_mobile_number_hash
from IN0357_data
where (lower(brand) like '%vim%' or lower(brand) like '%surf%'));