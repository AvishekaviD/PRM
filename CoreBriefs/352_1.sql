drop table "GAIN_THEORY".IN0352_Data;

create multiset table "GAIN_THEORY".IN0352_Data
(
best_mobile_number_hash varchar(300),region_lookup_number varchar(30),
region varchar(100),source varchar(100),lastinteractiondate timestamp,brand_name varchar(100),updated_Brand_Name varchar(100));



---bb

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'BB',cast(date_created as timestamp)
from PRM.bb_registration;


---kkt

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'KKT',cast(call_time as timestamp)
from PRM.kkt_cdrl_1800;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'KKT',cast(call_start_time as timestamp)
from PRM.kkt_cdrlobd;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'KKT',cast(call_date as timestamp)
from PRM.kkt_new;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'KKT',cast(date_of_interaction as timestamp)
from PRM.kkt_response;


---lakme

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(transaction_date as timestamp)
from PRM.lk_transaction_all_years;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(SUBSTR(trans_date,7,4)||'-'||SUBSTR(trans_date,1,2)||'-'||SUBSTR(trans_date,4,2)||' 00:00:00' as timestamp)
from PRM.lk_transaction;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK',cast(date_created as timestamp)
from  PRM.lk_customer;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(SUBSTR(lk_date,7,4)||'-'||SUBSTR(lk_date,1,2)||'-'||SUBSTR(lk_date,4,2)||' 00:00:00' as timestamp)
from PRM.lk_redeem_transaction;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'LK'
,cast(SUBSTR(transaction_date,7,4)||'-'||SUBSTR(transaction_date,1,2)||'-'||SUBSTR(transaction_date,4,2)||' 00:00:00' as timestamp)
from PRM.lk_redemption_all_years;


---pureit

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'PI'
,cast(create_date as timestamp)
from PRM.pi_consumer
where LENGTH(create_date)>1;.


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'PI'
,cast(date_created as timestamp)
from PRM.pi_consumer
where LENGTH(create_date)<1;

--complaint
insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(b.create_date as timestamp)
from PRM.pi_consumer a
inner join PRM.pi_complaint b on a.customer_number=b.customer_number
where LENGTH(b.create_date)>1;



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(b.date_created as timestamp)
from PRM.pi_consumer a
inner join PRM.pi_complaint b on a.customer_number=b.customer_number
where LENGTH(b.create_date)<1;



--rfs

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(b.order_date as timestamp)
from PRM.pi_consumer a
inner join PRM.pi_rfs b on a.customer_number=b.customer_number
where LENGTH(b.order_date)>1;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number ,source,lastinteractiondate)
select distinct a.best_mobile_number_hash ,a.region_lookup_number ,'PI'
,cast(b.date_created as timestamp)
from PRM.pi_consumer a
inner join PRM.pi_rfs b on a.customer_number=b.customer_number
where LENGTH(b.order_date)<1;




--bt

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'BT',b.campaign_brand,b.campaign_brand,cast(entry_date as timestamp)
from PRM.bt_entry a
inner join PRM.bt_campaign b on a.campaign_id=b.campaign_id
where b.country_code='IN';



----H2H

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 
,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(interaction_date,1,10)||SUBSTR(interaction_date,11,length(interaction_date)) as timestamp)
from PRM.h2h_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where interaction_date  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%','%/%')and LENGTH(interaction_date)>0;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 
,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(geo_timestamp,1,10)||SUBSTR(geo_timestamp,11,length(geo_timestamp)) as timestamp)
from PRM.mindtree_data a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where geo_timestamp  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%','%/%')
and LENGTH(geo_timestamp)>0;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 
,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(interaction_date,7,4)||'-'||SUBSTR(interaction_date,4,2)||'-'||SUBSTR(interaction_date,1,2)||SUBSTR(interaction_date,11,length(interaction_date)) as timestamp)
from PRM.h2h_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where interaction_date  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and  interaction_date LIKE ANY ('%/%') and LENGTH(interaction_date)>0;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',a.brand,updatedbrand_name
,cast(SUBSTR(geo_timestamp,7,4)||'-'||SUBSTR(geo_timestamp,4,2)||'-'||SUBSTR(geo_timestamp,1,2)||SUBSTR(geo_timestamp,11,length(geo_timestamp)) as timestamp)
from PRM.mindtree_data a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where geo_timestamp  NOT LIKE ALL ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and  geo_timestamp LIKE ANY ('%/%') and LENGTH(geo_timestamp)>0;



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct  best_mobile_number_hash ,region_lookup_number ,'H2H',brand,updatedbrand_name
,cast(("year"||'-'||"Month"||'-'||"Day"||' 00:00:00') as timestamp)
from (
select distinct  best_mobile_number_hash ,region_lookup_number ,c.brand,updatedbrand_name,
Case
when substr(geo_timestamp,8,2)='12' then '2012' when substr(geo_timestamp,8,2)='13' then '2013'
when substr(geo_timestamp,8,2)='14' then '2014' when substr(geo_timestamp,8,2)='15' then '2015'
when substr(geo_timestamp,8,2)='16' then '2016' when substr(geo_timestamp,8,2)='17' then '2017'
when substr(geo_timestamp,8,2)='18' then '2018'when substr(geo_timestamp,8,2)='18' then '2019' end "Year",
case 
when substr(geo_timestamp,4,3)='Jan' then '01' when substr(geo_timestamp,4,3)='Feb' then '02'
when substr(geo_timestamp,4,3)='Mar' then '03' when substr(geo_timestamp,4,3)='Apr' then '04'
when substr(geo_timestamp,4,3)='May' then '05' when substr(geo_timestamp,4,3)='Jun' then '06'
when substr(geo_timestamp,4,3)='Jul' then '07' when substr(geo_timestamp,4,3)='Aug' then '08'
when substr(geo_timestamp,4,3)='Sep' then '09' when substr(geo_timestamp,4,3)='Oct' then '10'
when substr(geo_timestamp,4,3)='Nov' then '11'when substr(geo_timestamp,4,3)='Dec' then '12' end "Month"
,substr(geo_timestamp,1,2) "Day",substr(geo_timestamp,11,6) "time"
from PRM.mindtree_data c
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on c.Brand=b.Brand_name
where  geo_timestamp   LIKE ANY ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and LENGTH(geo_timestamp)>0 ) as a ;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'H2H',brand
,updatedbrand_name,cast(("year"||'-'||"Month"||'-'||"Day"||"time"||':00') as timestamp)
from (
select distinct  best_mobile_number_hash ,region_lookup_number ,c.brand,updatedbrand_name,
Case
when substr(interaction_date,8,2)='12' then '2012' when substr(interaction_date,8,2)='13' then '2013'
when substr(interaction_date,8,2)='14' then '2014' when substr(interaction_date,8,3)='15' then '2015'
when substr(interaction_date,8,3)='16' then '2016' when substr(interaction_date,8,3)='17' then '2017'
when substr(interaction_date,8,3)='18' then '2018'when substr(interaction_date,8,3)='18' then '2019' end "Year",
case 
when substr(interaction_date,4,3)='Jan' then '01' when substr(interaction_date,4,3)='Feb' then '02'
when substr(interaction_date,4,3)='Mar' then '03' when substr(interaction_date,4,3)='Apr' then '04'
when substr(interaction_date,4,3)='May' then '05' when substr(interaction_date,4,3)='Jun' then '06'
when substr(interaction_date,4,3)='Jul' then '07' when substr(interaction_date,4,3)='Aug' then '08'
when substr(interaction_date,4,3)='Sep' then '09' when substr(interaction_date,4,3)='Oct' then '10'
when substr(interaction_date,4,3)='Nov' then '11'when substr(interaction_date,4,3)='Dec' then '12' end "Month"
,substr(interaction_date,1,2) "Day",substr(interaction_date,11,6) "time"
from PRM.h2h_transaction c
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on c.Brand=b.Brand_name
where  interaction_date   LIKE ANY ('%Jan%','%Feb%','%Mar%','%Apr%','%May%'
,'%Jun%','%Jul%','%Aug%','%Sep%','%Oct%','%Nov%','%Dec%')
and LENGTH(interaction_date)>0 ) as a ;




----digital

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(entry_date as timestamp)
from PRM.dl_all_campaigns  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where entry_date is not null;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(substr(datetime_of_interaction ,1,10)||substr(datetime_of_interaction ,11,6)||':00' as timestamp)
from PRM.dlts_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where datetime_of_interaction like '%-%';

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(SUBSTR(datetime_of_interaction,7,4)||'-'||SUBSTR(datetime_of_interaction,4,2)||'-'||SUBSTR(datetime_of_interaction,1,2)||SUBSTR(datetime_of_interaction,11,6)||':00' as timestamp)
from PRM.dlts_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where datetime_of_interaction like '%/%' and datetime_of_interaction not like '%Date/Time%';

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand,updatedbrand_name
,cast(SUBSTR(datetime_of_interaction,7,4)||'-'||SUBSTR(datetime_of_interaction,4,2)||'-'||SUBSTR(datetime_of_interaction,1,2)||SUBSTR(datetime_of_interaction,11,6)||':00' as timestamp)
from PRM.dlzd_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where datetime_of_interaction like '%/%' and datetime_of_interaction not like '%Date/Time%';


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand,updatedbrand_name
,cast(substr(datetime_of_interaction ,1,10)||' 00:00:00' as timestamp)
from PRM.dlzd_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name
where datetime_of_interaction like '%-%';

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(date_of_interaction as timestamp)
from PRM.imimobile_tier3 a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(date_of_interaction as timestamp(0))
from PRM.dloz_tier3 a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;




insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,circle ,'DL',c.Brand_name,updatedbrand_name
,cast(date_time_interaction as timestamp)
from PRM.imimobile_tier4_obd_master a 
inner join PRM.imimobile_tier4_campaign_master b on a.campaign_id=b.campaign_id
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on b.Brand=c.Brand_name;

insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,circle ,'DL',c.Brand_name,updatedbrand_name
,cast(date_and_time_of_interaction as timestamp) 
from PRM.imimobile_tier4_sms_master  a 
inner join PRM.imimobile_tier4_campaign_master b on a.campaign_id=b.campaign_id
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on b.Brand=c.Brand_name;



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(SUBSTR(date_of_interaction,7,4)||'-'||SUBSTR(date_of_interaction,4,2)||'-'||SUBSTR(date_of_interaction,1,2)||' 00:00:00' as timestamp)
from PRM.mgage_tier3 a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where LENGTH(date_of_interaction)>='10' ;


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(b.date_of_interaction1 as timestamp)
from PRM.mgage_tier3 a inner join GAIN_THEORY.PRMActiveInactiveDateMapping b
on a.date_of_interaction=b.date_of_interaction
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on a.Brand_name=c.Brand_name
where LENGTH(a.date_of_interaction)<'10';



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(SUBSTR(date_of_interaction,7,4)||'-'||SUBSTR(date_of_interaction,4,2)||'-'||SUBSTR(date_of_interaction,1,2)||' 00:00:00' as timestamp)
from PRM.thinkwalnut_tier3  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where date_of_interaction like '%-%' and LENGTH(date_of_interaction)>='10'
and date_of_interaction not like '%0000-00-00%';


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(SUBSTR(date_of_interaction,7,4)||'-'||SUBSTR(date_of_interaction,4,2)||'-'||SUBSTR(date_of_interaction,1,2) ||' 00:00:00' as timestamp)
from PRM.thinkwalnut_tier3  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where date_of_interaction like '%/%' and LENGTH(date_of_interaction)>='10';



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(SUBSTR(date_of_interaction,7,4)||'-'||SUBSTR(date_of_interaction,4,2)||'-'||SUBSTR(date_of_interaction,1,2)||' 00:00:00' as timestamp)
from PRM.dl197_transaction  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where date_of_interaction like '%/%' and LENGTH(date_of_interaction)>='10';



insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(SUBSTR(date_of_interaction,7,4)||'-'||SUBSTR(date_of_interaction,4,2)||'-'||SUBSTR(date_of_interaction,1,2) ||' 00:00:00' as timestamp)
from PRM.dl197_transaction  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name
where date_of_interaction like '%-%' and LENGTH(date_of_interaction)>='10';


insert into "GAIN_THEORY".IN0352_Data(best_mobile_number_hash ,region_lookup_number 

,source,Brand_Name,updated_Brand_Name,lastinteractiondate)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL',a.Brand_name,updatedbrand_name
,cast(b.date_of_interaction1 as timestamp)
from PRM.dl197_transaction a inner join GAIN_THEORY.PRMActiveInactiveDateMapping b
on a.date_of_interaction=b.date_of_interaction
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on a.Brand_name=c.Brand_name
where LENGTH(a.date_of_interaction)<'10';




--query for counts



select source providers
,CAST(lastinteractiondate AS DATE FORMAT'e4') (CHAR(9)) "Day"
,substr(cast(lastinteractiondate as varchar(100)),12,2) "Time"
,count(distinct a.best_mobile_number_hash) interactions
from IN0352_Data a inner join PRM.ref_mobile_lookup c on a.region_lookup_number = c.lookup_prefix5
where lower(c.region) = 'delhi' 
group by 1,2,3;

select source providers
,CAST(lastinteractiondate AS DATE FORMAT'e4') (CHAR(9)) "Day"
,substr(cast(lastinteractiondate as varchar(100)),12,2) "Time"
,count(distinct best_mobile_number_hash) interactions
from IN0352_Data 
where best_mobile_number_hash in (select distinct best_mobile_number_hash
from GAIN_THEORY.PRM_all_city_mobile_mapped
where (lower(city) like '%gurg%' or lower(city) like '%gudg%') and lower(city) not like 'chi%' )
group by 1,2,3;
