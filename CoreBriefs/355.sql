--consumer

create multiset table "GAIN_THEORY".IN0355_Consumer_Counts
(
best_mobile_number_hash varchar(300),region_lookup_number varchar(30),region varchar(100),source varchar(100)
,Updatedsource varchar(100),brand_name varchar(100),updated_Brand_Name varchar(100));


create multiset table "GAIN_THEORY".IN0355_Consumer_Counts
(
best_mobile_number_hash varchar(300),region_lookup_number varchar(30),region varchar(100),source varchar(100)
,Updatedsource varchar(100),brand_name varchar(100),updated_Brand_Name varchar(100));

--brandtone

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'BT','BT',b.campaign_brand,b.campaign_brand
from PRM.bt_entry a
inner join PRM.bt_campaign b on a.campaign_id=b.campaign_id
where b.country_code='IN'
and b.campaign_id not in ('2628','2626','2551','2517','2456','2400','2382','2366'
,'2345','2344','2324','2200','2195','2176','2120','2120');


----digital

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLall','DL',a.Brand_name,updatedbrand_name
from PRM.dl_all_campaigns  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;


insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLoz','DL',a.Brand_name,updatedbrand_name
from PRM.dloz_tier3 a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLts','DL',a.Brand_name,updatedbrand_name
from PRM.dlts_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLzd','DL',a.Brand,updatedbrand_name
from PRM.dlzd_transaction a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand=b.Brand_name;

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLimi','DL',a.Brand_name,updatedbrand_name
from PRM.imimobile_tier3 a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;


insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,circle ,'DLimiobd','DL',c.Brand_name,updatedbrand_name
from PRM.imimobile_tier4_obd_master a 
inner join PRM.imimobile_tier4_campaign_master b on a.campaign_id=b.campaign_id
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on b.Brand=c.Brand_name;

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,circle ,'DLimisms','DL',c.Brand_name,updatedbrand_name
from PRM.imimobile_tier4_sms_master  a 
inner join PRM.imimobile_tier4_campaign_master b on a.campaign_id=b.campaign_id
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on b.Brand=c.Brand_name;



insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLmgage','DL',a.Brand_name,updatedbrand_name
from PRM.mgage_tier3 a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;



insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLmgage','DL',a.Brand_name,updatedbrand_name
from PRM.mgage_tier3 a inner join GAIN_THEORY.PRMActiveInactiveDateMapping b
on a.date_of_interaction=b.date_of_interaction
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on a.Brand_name=c.Brand_name;


insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLthink','DL',a.Brand_name,updatedbrand_name
from PRM.thinkwalnut_tier3  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;


insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DLthink','DL',a.Brand_name,updatedbrand_name
from PRM.thinkwalnut_tier3  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;


insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL197','DL',a.Brand_name,updatedbrand_name
from PRM.dl197_transaction  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL197','DL',a.Brand_name,updatedbrand_name
from PRM.dl197_transaction  a
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping b on a.Brand_name=b.Brand_name;

insert into "GAIN_THEORY".IN0355_Consumer_Counts(best_mobile_number_hash ,region_lookup_number 
,source,Updatedsource,Brand_Name,updated_Brand_Name)
select distinct best_mobile_number_hash ,region_lookup_number ,'DL197','DL',a.Brand_name,updatedbrand_name
from PRM.dl197_transaction a inner join GAIN_THEORY.PRMActiveInactiveDateMapping b
on a.date_of_interaction=b.date_of_interaction
inner join GAIN_THEORY.PRMActiveInactiveBrandMapping c on a.Brand_name=c.Brand_name;



--query for counts

--consumer counts
select b.region,a.updated_Brand_Name,'4-7' LSM,count(distinct a.best_mobile_number_hash) counts
from IN0355_Consumer_Counts a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b where b.FinalLSM = '4-7')
and (lower(b.region) like '%karna%' or lower(b.region) like '%tamil%'
or lower(b.region) like '%andh%' or lower(b.region) like '%kera%')
group by 1,2;
select b.region,a.updated_Brand_Name,'7+' LSM,count(distinct a.best_mobile_number_hash) counts
from IN0355_Consumer_Counts a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b where b.FinalLSM = '7+')
and (lower(b.region) like '%karna%' or lower(b.region) like '%tamil%'
or lower(b.region) like '%andh%' or lower(b.region) like '%kera%')
group by 1,2;
select b.region,a.updated_Brand_Name,'''4-7' LSM,count(distinct a.best_mobile_number_hash) counts
from IN0355_Consumer_Counts a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b where b.FinalLSM = '4-7')
and (lower(b.region) like '%chenn%')
group by 1,2;
select b.region,a.updated_Brand_Name,'7+' LSM,count(distinct a.best_mobile_number_hash) counts
from IN0355_Consumer_Counts a
inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
where a.best_mobile_number_hash in (select distinct best_mobile_number_hash 
from GAIN_THEORY.LSM3_CombinedSourceSKU b where b.FinalLSM = '7+')
and (lower(b.region) like '%chenn%' )
group by 1,2;



select count(distinct best_mobile_number_hash )
from GAIN_THEORY.LSM3_CombinedSourceSKU b where b.FinalLSM = '4-7'
and (lower(b.region) like '%karna%' or lower(b.region) like '%tamil%'
or lower(b.region) like '%andh%' or lower(b.region) like '%kera%');


--redemption type

select 
case when lower(campaign_type) like '%talk%' then 'Talktime'
when lower(campaign_type) like '%contest%' then 'Contest'
when campaign_type = 'Love ka recharge' then 'Love ka recharge'
end as campaign,count(distinct best_mobile_number_hash) counts
from (
select distinct campaign_type,best_mobile_number_hash
from PRM.dlts_transaction a where length(campaign_type) > 0
union all
select distinct campaign_type,best_mobile_number_hash
from PRM.dlzd_transaction a where length(campaign_type) > 0
union all
select distinct campaign_name campaign_type,best_mobile_number_hash
from PRM.imimobile_tier3 where lower(campaign_name) like '%talk%' or lower(campaign_name) like '%contest%'
union all
select distinct a.campaign_name campaign_type,b.best_mobile_number_hash
from PRM.imimobile_tier4_campaign_master a
inner join PRM.imimobile_tier4_sms_master b
on a.campaign_id = b.campaign_id
where lower(campaign_name) like '%talk%' or lower(campaign_name) like '%contest%'
union all
select distinct campaign_type, best_mobile_number_hash
from PRM.dl197_transaction a where length(campaign_type) > 0
and (lower(campaign_type) like '%talk%' or lower(campaign_type) like '%contest%')
union all
select distinct campaign_name campaign_type,best_mobile_number_hash 
from PRM.dl197_transaction
where lower(campaign_name) like '%corne%'
or lower(brand_name) like '%corne%' ) a
where lower(campaign_type) like '%talk%' 
or lower(campaign_type) like '%contest%' 
or campaign_type = 'Love ka recharge'
group by 1;


--trader counts

--drop table "GAIN_THEORY".IN0355_Trader_Counts;

create multiset table "GAIN_THEORY".IN0355_Trader_Counts
(
campaign_id varchar(255),best_mobile_number_hash varchar(300),region_lookup_number varchar(30)
,question_text varchar(300),answer_text varchar(300));

--delete from "GAIN_THEORY".IN0355_Trader_Counts;

--bt 

select b.region,case when a.campaign_id = '2628' then 'Bru'
when a.campaign_id like '%2626%' then 'Taj'
when a.campaign_id like '%2551%' then 'FAL'
when a.campaign_id like '%2517%' then 'Taj'
when a.campaign_id like '%2456%' then 'Royco'
when a.campaign_id like '%2400%' then 'Surf'
when a.campaign_id like '%2382%' then 'RIN'
when a.campaign_id like '%2366%' then 'RIN'
when a.campaign_id like '%2345%' then 'Surf'
when a.campaign_id like '%2344%' then 'Surf'
when a.campaign_id like '%2324%' then 'UnileverTradersLoyatlyPhase'
when a.campaign_id like '%2200%' then 'Bru'
when a.campaign_id like '%2195%' then 'Bru'
when a.campaign_id like '%2176%' then 'Bru'
when a.campaign_id like '%2120%' then 'Bru'
when a.campaign_id like '%2120%' then 'Bru' end as brand,a.question_text,a.answer_text
,count(distinct a.best_mobile_number_hash)
from IN0355_Trader_Counts a inner join PRM.ref_mobile_lookup b
on a.region_lookup_number = b.lookup_prefix5
group by 1,2,3,4;



select distinct question_id,question_text from PRM.bt_question;

select distinct answer_id, answer_text from PRM.bt_answer;




--trader counts




