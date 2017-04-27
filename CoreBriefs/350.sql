create table IN0350_Data_extraction
(
best_mobile_number_hash varchar(255)
,region_lookup_number varchar(25)
,sources varchar(100)
,lastinteractiondate date
);




---pureit

insert into "GAIN_THEORY".IN0350_Data_extraction(best_mobile_number_hash ,region_lookup_number ,sources,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'PI'
,max(cast(SUBSTR(create_date,1,10) as date))
from PRM.pi_consumer
where LENGTH(create_date)>1
group by best_mobile_number_hash ,region_lookup_number;

insert into "GAIN_THEORY".IN0350_Data_extraction(best_mobile_number_hash ,region_lookup_number ,sources,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'PI'
,max(cast(date_created as date))
from PRM.pi_consumer
where LENGTH(create_date)<1
group by best_mobile_number_hash ,region_lookup_number;

--complaint
insert into "GAIN_THEORY".IN0350_Data_extraction(best_mobile_number_hash ,region_lookup_number ,sources,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,max(cast(SUBSTR(b.create_date,1,10) as date))
from PRM.pi_consumer a
inner join PRM.pi_complaint b on a.customer_number=b.customer_number
where LENGTH(b.create_date)>1
group by a.best_mobile_number_hash ,a.region_lookup_number;


insert into "GAIN_THEORY".IN0350_Data_extraction(best_mobile_number_hash ,region_lookup_number ,sources,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,max(cast(b.date_created as date))
from PRM.pi_consumer a
inner join PRM.pi_complaint b on a.customer_number=b.customer_number
where LENGTH(b.create_date)<1
group by a.best_mobile_number_hash ,a.region_lookup_number;


--rfs

insert into "GAIN_THEORY".IN0350_Data_extraction(best_mobile_number_hash ,region_lookup_number ,sources,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,max(cast(SUBSTR(b.order_date,1,10) as date))
from PRM.pi_consumer a
inner join PRM.pi_rfs b on a.customer_number=b.customer_number
where LENGTH(b.order_date)>1
group by a.best_mobile_number_hash ,a.region_lookup_number;


insert into "GAIN_THEORY".IN0350_Data_extraction(best_mobile_number_hash ,region_lookup_number ,sources,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,max(cast(b.date_created as date))
from PRM.pi_consumer a
inner join PRM.pi_rfs b on a.customer_number=b.customer_number
where LENGTH(b.order_date)<1
group by a.best_mobile_number_hash ,a.region_lookup_number;


select 
    distinct 'IN' as market
    , 'PI' provider
	, best_mobile_number_hash as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from (select distinct best_mobile_number_hash
from (select best_mobile_number_hash,max(lastinteractiondate) as lastinteractiondate
from IN0350_Data_extraction group by 1) a
where current_date - lastinteractiondate <= 365) a;


select count(distinct best_mobile_number_hash)  as mobileno
from (select distinct best_mobile_number_hash
from (select best_mobile_number_hash,max(lastinteractiondate) as lastinteractiondate
from IN0350_Data_extraction group by 1) a
where current_date - lastinteractiondate <= 365) a;



delete from  "GAIN_THEORY".IN0350_Data_extraction;