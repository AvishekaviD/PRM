select case
when lower(city) like '%aboh%' then 'Abohar'
when (lower(city) like '%belag%' or lower(city) like '%belg%') then 'Belgaum'
when lower(city) like '%raip%'  then 'Raipur'
when lower(city) like '%secun%' then 'Secunderabad'
when lower(city) like '%shimo%' then 'Shivamogga'
when lower(city) like '%kuch%' then 'Kuchh'
when lower(city) like '%alwa%' then 'Alwar'
when lower(city) like '%fazi%' then 'Fazilka'
when lower(city) like 'hy%' then 'Hyderabad'
when (lower(city) like '%baang%' or lower(city) like '%bamg%' or lower(city) like '%banag%'  or lower(city) like '%bangal%' 
or lower(city) like '%bangl%' or lower(city) like '%bango%' or lower(city) like '%bengalu%' or lower(city) like '%bengalo%'
or lower(city) like '%blor%') then 'Bangalore'
when (lower(city) like '%luck%' or lower(city) like '%lukn%') then 'Lucknow'
when lower(city) like '%agra%' then 'Agra'
when lower(city) like '%ahmed%' then 'Ahmedabad '
when lower(city) like '%ajme%' then 'Ajmer'
when lower(city) like '%alig%' then 'Aligarh'
when lower(city) like '%alla%' then 'Allahabad'
when lower(city) like '%amba%' then 'Ambattur'
when lower(city) like '%amra%' then 'Amravati'
when lower(city) like '%amri%' then 'Amritsar'
when lower(city) like '%asan%' then 'Asansol'
when lower(city) like '%aura%' then 'Aurangabad'
when lower(city) like '%bare%' then 'Bareilly'
when lower(city) like '%bhav%' then 'Bhavnagar'
when lower(city) like '%bhil%' then 'Bhilai Nagar'
when lower(city) like '%bhiw%' then 'Bhiwandi'
when lower(city) like '%bhop%' then 'Bhopal'
when lower(city) like '%bhub%' then 'Bhubaneswar'
when lower(city) like '%bika%' then 'Bikaner'
when lower(city) like '%chan%' then 'Chandigarh'
when lower(city) like '%coim%' then 'Coimbatore'
when lower(city) like '%cutt%' then 'Cuttack'
when lower(city) like '%dehr%' then 'Dehradun'
when lower(city) like '%dhan%' then 'Dhanbad'
when lower(city) like '%durg%' then 'Durgapur'
when lower(city) like '%fari%' then 'Faridabad'
when lower(city) like '%firo%' then 'Firozabad'
when lower(city) like '%gaya%' then 'Gaya'
when lower(city) like '%ghaz%' then 'Ghaziabad'
when lower(city) like '%gora%' then 'Gorakhpur'
when lower(city) like '%gulb%' then 'Gulbarga'
when lower(city) like '%gunt%' then 'Guntur'
when lower(city) like '%gurg%' then 'Gurgaon'
when lower(city) like '%guwa%' then 'Guwahati'
when lower(city) like '%gwal%' then 'Gwalior'
when lower(city) like '%haor%' then 'Haora'
when lower(city) like '%hubl%' then 'Hubli and Dharwad'
when lower(city) like '%indo%' then 'Indore'
when lower(city) like '%jaba%' then 'Jabalpur'
when lower(city) like '%jaip%' then 'Jaipur'
when lower(city) like '%jala%' then 'Jalandhar'
when lower(city) like '%jalg%' then 'Jalgaon'
when lower(city) like '%jamm%' then 'Jammu'
when lower(city) like '%jamn%' then 'Jamnagar'
when lower(city) like '%jams%' then 'Jamshedpur'
when lower(city) like '%jhan%' then 'Jhansi'
when lower(city) like '%jodh%' then 'Jodhpur'
when lower(city) like '%kaly%' then 'Kalyan & Dombivali'
when lower(city) like '%kanp%' then 'Kanpur'
when lower(city) like '%koch%' then 'Kochi'
when lower(city) like '%kola%' then 'Kolapur'
when lower(city) like '%kota%' then 'Kota'
when lower(city) like '%loni%' then 'Loni'
when lower(city) like '%ludh%' then 'Ludhiana'
when lower(city) like '%madu%' then 'Madurai'
when lower(city) like '%mahe%' then 'Maheshtala'
when lower(city) like '%male%' then 'Malegoan'
when lower(city) like '%mang%' then 'Mangalore'
when lower(city) like '%meer%' then 'Meerut'
when lower(city) like '%mira%' then 'Mira and Bhayander'
when lower(city) like '%mora%' then 'Moradabad'
when lower(city) like '%myso%' then 'Mysore'
when lower(city) like '%nagp%' then 'Nagpur'
when lower(city) like '%nand%' then 'Nanded Waghala'
when lower(city) like '%nash%' then 'Nashik'
when lower(city) like '%navi%' then 'Navi Mumbai'
when lower(city) like '%nell%' then 'Nellore'
when lower(city) like '%noid%' then 'Noida'
when lower(city) like '%patn%' then 'Patna'
when lower(city) like '%pimp%' then 'Pimpri & Chinchwad'
when lower(city) like '%pune%' then 'Pune'
when lower(city) like '%raip%' then 'Raipur'
when lower(city) like '%rajk%' then 'Rajkot'
when lower(city) like '%ranc%' then 'Ranchi'
when lower(city) like '%saha%' then 'Saharanpur'
when lower(city) like '%sale%' then 'Salem'
when lower(city) like '%sang%' then 'Sangli Miraj Kupwad'
when lower(city) like '%sili%' then 'Siliguri'
when lower(city) like '%sola%' then 'Solapur'
when lower(city) like '%srin%' then 'Srinagar'
when lower(city) like '%sura%' then 'Surat'
when lower(city) like '%than%' then 'Thane'
when lower(city) like '%thir%' then 'Thiruvananthapuram'
when lower(city) like '%tiruc%' then 'Tiruchirappalli'
when lower(city) like '%tiru%' then 'Tirunelveli'
when lower(city) like '%udai%' then 'Udaipur'
when lower(city) like '%ujja%' then 'Ujjain'
when lower(city) like '%ulha%' then 'Ulhasnagar'
when lower(city) like '%vado%' then 'Vadodara'
when lower(city) like '%vara%' then 'Varanasi'
when lower(city) like '%vasa%' then 'Vasai Virar'
when lower(city) like '%vija%' then 'Vijayawada'
when lower(city) like '%visa%' then 'Visakhapatnam'
when lower(city) like '%wara%' then 'Warangal'
else city end as city,count(distinct email) from GAIN_THEORY.PRMDashboard_data
where provider = 'BB'
group by 1;

select b.store_address4,
case 
when amount_sum < 2000 then '<2k'
when amount_sum >= 2000 and amount_sum < 5000 then '2kto5k'
when amount_sum >= 5000 and amount_sum < 10000 then '5to10K'
when amount_sum >= 10000 and amount_sum < 15000 then '10kto15K'
when amount_sum >= 15000 then '>15k' 
else '>>15k' end as sum_amt,count(distinct best_mobile_number_hash) as counts 
from (select distinct best_mobile_number_hash,store_id,sum(amount) amount_sum
from (select distinct best_mobile_number_hash ,store_id,cast(amount as int) amount
from PRM.lk_transaction a
union select distinct best_mobile_number_hash,lk_store_id,cast(amount as int)
from PRM.lk_transaction_all_years a) a 
group by 1,2) a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
group by 1,2;


select b.store_address4,
case 
when amount_sum < 2000 then '<2k'
when amount_sum >= 2000 and amount_sum < 5000 then '2kto5k'
when amount_sum >= 5000 and amount_sum < 10000 then '5to10K'
when amount_sum >= 10000 and amount_sum < 15000 then '10kto15K'
when amount_sum >= 15000 then '>15k' 
else '>>15k' end as sum_amt,count(distinct c.email_hash) as counts 
from (select distinct best_mobile_number_hash,store_id,sum(amount) amount_sum
from (select distinct best_mobile_number_hash ,store_id,cast(amount as int) amount
from PRM.lk_transaction a
union select distinct best_mobile_number_hash,lk_store_id,cast(amount as int)
from PRM.lk_transaction_all_years a) a 
group by 1,2) a
inner join PRM.lk_salon_store_master b on a.store_id = b.store_id
inner join (select distinct email_hash, best_mobile_number_hash from PRM.lk_customer
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0
union all select distinct email_hash, best_mobile_number_hash from PRM.lk_customer_pti748
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0
union all select distinct email_hash, best_mobile_number_hash from PRM.lk_customer_master
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0) c
on a.best_mobile_number_hash = c.best_mobile_number_hash
group by 1,2;



select count(distinct email_hash)
from (select distinct email_hash, best_mobile_number_hash from PRM.lk_customer
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0
union all select distinct email_hash, best_mobile_number_hash from PRM.lk_customer_pti748
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0
union all select distinct email_hash, best_mobile_number_hash from PRM.lk_customer_master
where length(email_hash) > 0 and length(best_mobile_number_hash) > 0) a;
