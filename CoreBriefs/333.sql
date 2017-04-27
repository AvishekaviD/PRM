select 'H2H' as provider, count(distinct best_mobile_number_hash) from (
select distinct best_mobile_number_hash from PRM.h2h_transaction
union select distinct best_mobile_number_hash from PRM.mindtree_data) as a
union 
select 'PI' as provider, count(distinct best_mobile_number_hash) from (
select distinct best_mobile_number_hash from PRM.pi_consumer
union select distinct best_mobile_number_hash from  PRM.pi_consumer_pti748) as a