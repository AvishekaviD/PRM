--lakme base

select b.region, count(distinct best_mobile_number_hash) counts
from (select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_customer
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_customer_master
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_customer_pti748
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_redeem_transaction
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_redemption_all_years
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_transaction
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_transaction_all_years
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_transaction_void_cust
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.lk_transaction_voided) a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
group by 1;

select store_address1,store_address2,store_address4,count(distinct best_mobile_number_hash) counts
from (select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_customer a
right join PRM.lk_salon_store_master b on a.store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_customer_master a
right join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_customer_pti748 a
right join PRM.lk_salon_store_master b on a.store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_redeem_transaction a
right join PRM.lk_salon_store_master b on a.store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_redemption_all_years a
right join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_transaction a
right join PRM.lk_salon_store_master b on a.store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_transaction_all_years a
right join PRM.lk_salon_store_master b on a.lk_store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_transaction_void_cust a
right join PRM.lk_salon_store_master b on a.store_id = b.store_id
union all select distinct best_mobile_number_hash,store_address1,store_address4,store_address2 from PRM.lk_transaction_voided a
right join PRM.lk_salon_store_master b on a.store_id = b.store_id) a
group by store_address1,store_address2,store_address4;


--h2h base

select b.region, count(distinct best_mobile_number_hash) counts
from (select distinct best_mobile_number_hash,region_lookup_number from PRM.h2h_transaction
union all select distinct best_mobile_number_hash,region_lookup_number from PRM.mindtree_data) a
inner join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
group by 1;

select distinct city, count(distinct best_mobile_number_hash) counts from (select distinct city,best_mobile_number_hash from PRM.h2h_transaction
union all select distinct city,best_mobile_number_hash from PRM.mindtree_data) a
group by city;


--city wise not lakme customer
select distinct city, count(distinct best_mobile_number_hash) counts 
from (select distinct city,best_mobile_number_hash from PRM.h2h_transaction
union all select distinct city,best_mobile_number_hash from PRM.mindtree_data) a
where best_mobile_number_hash not in (select distinct best_mobile_number_hash
from (select distinct best_mobile_number_hash from PRM.lk_customer a
union all select distinct best_mobile_number_hash from PRM.lk_customer_master a
union all select distinct best_mobile_number_hash from PRM.lk_customer_pti748 a
union all select distinct best_mobile_number_hash from PRM.lk_redeem_transaction a
union all select distinct best_mobile_number_hash from PRM.lk_redemption_all_years a
union all select distinct best_mobile_number_hash from PRM.lk_transaction a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_all_years a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_void_cust a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_voided a) a)
group by city;


select count( distinct best_mobile_number_hash)
from (select distinct best_mobile_number_hash from PRM.lk_customer a
union all select distinct best_mobile_number_hash from PRM.lk_customer_master a
union all select distinct best_mobile_number_hash from PRM.lk_customer_pti748 a
union all select distinct best_mobile_number_hash from PRM.lk_redeem_transaction a
union all select distinct best_mobile_number_hash from PRM.lk_redemption_all_years a
union all select distinct best_mobile_number_hash from PRM.lk_transaction a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_all_years a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_void_cust a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_voided a) a;

select top 50 city,latitude,longitude,count(distinct best_mobile_number_hash) counts 
from (select distinct city,latitude,longitude,best_mobile_number_hash from PRM.h2h_transaction
union all select distinct city,latitude,longitude,best_mobile_number_hash from PRM.mindtree_data) a
where best_mobile_number_hash not in (select distinct best_mobile_number_hash
from (select distinct best_mobile_number_hash from PRM.lk_customer a
union all select distinct best_mobile_number_hash from PRM.lk_customer_master a
union all select distinct best_mobile_number_hash from PRM.lk_customer_pti748 a
union all select distinct best_mobile_number_hash from PRM.lk_redeem_transaction a
union all select distinct best_mobile_number_hash from PRM.lk_redemption_all_years a
union all select distinct best_mobile_number_hash from PRM.lk_transaction a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_all_years a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_void_cust a
union all select distinct best_mobile_number_hash from PRM.lk_transaction_voided a) a)
group by city,latitude,longitude;
