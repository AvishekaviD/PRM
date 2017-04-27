select count(distinct mobile_number)
from GAIN_THEORY.PRMDashboard_data;

select case when lower(region) like '%chenn%' then 'Tamilnadu'
else region end as region,brand,count(distinct mobile_number) counts 
from GAIN_THEORY.PRMDashboard_data
where region in ('Andhra Pradesh','Chennai','Tamilnadu','Karnataka')
and consumer = 'trader'
group by 1,2;

select region, case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select region,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data where lsm = '0-3' 
and region in ('Andhra Pradesh','Karnataka')
and consumer = 'Customer'
group by 1,2) a group by 1,2;


select region,brand, case when current_date -lastinetractiondate <= 90 then 'less than 3 months'
when current_date -lastinetractiondate > 90 and current_date -lastinetractiondate <= 180 then '3-6 months'
when current_date -lastinetractiondate > 180 and current_date -lastinetractiondate <= 270 then '6-9 months'
when current_date -lastinetractiondate > 270 and current_date -lastinetractiondate <= 365 then '9-12 months'
when current_date -lastinetractiondate > 365 then 'greater than 12 months'
else 'greater than 12 months' end as recency,count(distinct mobile_number) counts
from (select region,brand,mobile_number,max(lastinetractiondate) lastinetractiondate
from GAIN_THEORY.PRMDashboard_data where lsm = '0-3' 
and region in ('Andhra Pradesh','Karnataka')
and consumer = 'Customer'
group by 1,2,3) a group by 1,2,3;


