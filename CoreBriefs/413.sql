select count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(pincode) = 6 and pincode <> '000000';

select count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(pincode) > 8 and pincode not like '%0.0.0%';

select count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(email) > 0 and length(mobile_number) > 0;

select count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(age) > 0;

select count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(gender) > 0;

select count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(name) > 0;

select consumer,count(distinct mobile_number) from GAIN_THEORY.PRMDashboard_data
group by 1;

select brand_count,count(distinct mobile_number) 
from (select distinct mobile_number,count(distinct brand) brand_count
from GAIN_THEORY.PRMDashboard_data
group by 1) a
group by 1;



select distinct mobile_number,brand from GAIN_THEORY.PRMDashboard_data
where mobile_number in (select distinct mobile_number
from GAIN_THEORY.PRMDashboard_data
group by 1
having count(distinct brand) > 20);


--updates

select lsm,confidence,count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(pincode) = 6 and pincode <> '000000'
and lsm in ('4-7','7+')
group by 1,2;

select lsm,confidence,count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(pincode) > 8 and pincode not like '%0.0.0%'
and lsm in ('4-7','7+')
group by 1,2;

select lsm,confidence,count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(email) > 0 and length(mobile_number) > 0
and lsm in ('4-7','7+')
group by 1,2;

select lsm,confidence,count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(age) > 0
and lsm in ('4-7','7+')
group by 1,2;

select lsm,confidence,count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(gender) > 0
and lsm in ('4-7','7+')
group by 1,2;

select lsm,confidence,count(distinct mobile_number) Counts
from GAIN_THEORY.PRMDashboard_data
where length(name) > 0
and lsm in ('4-7','7+')
group by 1,2;



select city,''''||lsm lsm,confidence, case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select case
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
else city end as city,lsm,confidence,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data 
where lsm in ('4-7','7+')group by 1,2,3,4) a group by 1,2,3,4
having count(distinct mobile_number) >= 100;


select ''''||lsm lsm,confidence, case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select lsm,confidence,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data 
where lsm in ('4-7','7+')group by 1,2,3) a group by 1,2,3;