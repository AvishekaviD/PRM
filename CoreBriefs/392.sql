

select provider,case when lower(city) like 'ahmed%' then 'Ahemdabad'
when lower(city) like 'ahmad%' then 'Ahemdabad'
when lower(city) like 'ahmd%' then 'Ahemdabad'
when lower(city) like 'aham%' then 'Ahemdabad'
when lower(city) like 'ahem%' then 'Ahemdabad'
when lower(city) like 'bangalu%' then 'Bengaluru'
when lower(city) like 'bangalo%' then 'Bengaluru'
when lower(city) like 'banagal%' then 'Bengaluru'
when lower(city) like 'bengalu%' then 'Bengaluru'
when lower(city) like 'bangalo%' then 'Bengaluru'
when lower(city) like 'bangl%' then 'Bengaluru'
when lower(city) like 'bengl%' then 'Bengaluru'
when lower(city) like 'bango%' then 'Bengaluru'
when lower(city) like 'bangu%' then 'Bengaluru'
when lower(city) like 'blr%' then 'Bengaluru'
when lower(city) like 'bnag%' then 'Bengaluru'
when lower(city) like 'blore%' then 'Bengaluru'
when lower(city) like 'hyder%' then 'Hyderbad'
when lower(city) like 'hydra%' then 'Hyderbad'
when lower(city) like 'puna%' then 'Pune'
when lower(city) like 'poona%' then 'Pune'
when lower(city) like 'pune%' then 'Pune'
when lower(city) like 'jai%' then 'Jaipur'
end as city,brand,count(distinct mobile_number) from PRMDashboard_data
where provider in ('H2H','DL') and (lower(brand) like '%dove%' or lower(brand) like '%lakme%')
and (lower(city) like 'ahmed%' or lower(city) like 'ahmad%' or lower(city) like 'ahmd%' or lower(city) like 'aham%' 
or lower(city) like 'ahem%' or lower(city) like 'bangalu%'or lower(city) like 'bangalo%' or lower(city) like 'banagal%'
or lower(city) like 'bengalu%' or lower(city) like 'bangalo%'or lower(city) like 'bangl%' or lower(city) like 'bengl%'
or lower(city) like 'bango%' or lower(city) like 'bangu%'or lower(city) like 'blr%' or lower(city) like 'bnag%' 
or lower(city) like 'blore%' or lower(city) like 'hyder%'or lower(city) like 'hydra%' or lower(city) like 'puna%' 
or lower(city) like 'poona%' or lower(city) like 'pune%' or lower(city) like 'jai%' )
group by 1,2,3
union
select provider,case when lower(city) like 'ahmed%' then 'Ahemdabad'
when lower(city) like 'ahmad%' then 'Ahemdabad'
when lower(city) like 'ahmd%' then 'Ahemdabad'
when lower(city) like 'aham%' then 'Ahemdabad'
when lower(city) like 'ahem%' then 'Ahemdabad'
when lower(city) like 'bangalu%' then 'Bengaluru'
when lower(city) like 'bangalo%' then 'Bengaluru'
when lower(city) like 'banagal%' then 'Bengaluru'
when lower(city) like 'bengalu%' then 'Bengaluru'
when lower(city) like 'bangalo%' then 'Bengaluru'
when lower(city) like 'bangl%' then 'Bengaluru'
when lower(city) like 'bengl%' then 'Bengaluru'
when lower(city) like 'bango%' then 'Bengaluru'
when lower(city) like 'bangu%' then 'Bengaluru'
when lower(city) like 'blr%' then 'Bengaluru'
when lower(city) like 'bnag%' then 'Bengaluru'
when lower(city) like 'blore%' then 'Bengaluru'
when lower(city) like 'hyder%' then 'Hyderbad'
when lower(city) like 'hydra%' then 'Hyderbad'
when lower(city) like 'puna%' then 'Pune'
when lower(city) like 'poona%' then 'Pune'
when lower(city) like 'pune%' then 'Pune'
when lower(city) like 'jai%' then 'Jaipur'
end as city,brand,count(distinct mobile_number) from PRMDashboard_data
where provider in ('BB','LK') 
and (lower(city) like 'ahmed%' or lower(city) like 'ahmad%' or lower(city) like 'ahmd%' or lower(city) like 'aham%' 
or lower(city) like 'ahem%' or lower(city) like 'bangalu%'or lower(city) like 'bangalo%' or lower(city) like 'banagal%'
or lower(city) like 'bengalu%' or lower(city) like 'bangalo%'or lower(city) like 'bangl%' or lower(city) like 'bengl%'
or lower(city) like 'bango%' or lower(city) like 'bangu%'or lower(city) like 'blr%' or lower(city) like 'bnag%' 
or lower(city) like 'blore%' or lower(city) like 'hyder%'or lower(city) like 'hydra%' or lower(city) like 'puna%' 
or lower(city) like 'poona%' or lower(city) like 'pune%' or lower(city) like 'jai%' )
group by 1,2,3
union
select provider,region,brand,count(distinct mobile_number) from PRMDashboard_data
where provider in ('H2H','DL') and (lower(brand) like '%dove%' or lower(brand) like '%lakme%')
and (lower(region) like 'chennai%' or lower(region) like 'mumb%' or lower(region) like 'kolk%' or lower(region) like 'delh%' )
group by 1,2,3
union
select provider,region,brand,count(distinct mobile_number) from PRMDashboard_data
where provider in ('BB','LK') 
and (lower(region) like 'chennai%' or lower(region) like 'mumb%' or lower(region) like 'kolk%' or lower(region) like 'delh%' )
group by 1,2,3;

/*
 * Please share counts for Dove, Lakme & Be Beautiful for Metros. 
 * - Delhi, Mumbai, Kolkata, Chennai, Pune, Ahmedabad, Bangalore, Jaipur, Hyderabad*/
