select case when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider,datepart(year,a.lastinteractiondate) as year
	,count(distinct a.mobileno) as mobileno
from
    southasia.pdwh_counting_mobile a
where 
    len(a.mobileno) > 0
	and datepart(year,a.lastinteractiondate) in ('2015','2016')
group by 1,2


select case when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider,datepart(year,a.lastinteractiondate) as year
	,count(distinct a.mobileno) as mobileno
from
    southasia.pdwh_counting_mobile a
where 
    a.optinhulbrand in ('A','C')
    and a.ismobilevalid = 'Y'
	and datepart(year,a.lastinteractiondate) in ('2015','2016')
group by 1,2
