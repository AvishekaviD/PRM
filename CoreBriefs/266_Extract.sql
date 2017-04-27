
--MO_HA_India360_IN0266_20160827_JenstonJustin




select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value

from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and lower(b.region) like '%orissa%';

select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value

from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and lower(b.region) like '%punj%';

select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or  lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and lower(b.region) like '%harya%';

--
	
select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or  lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and lower(b.region) like '%bihar%jharkhand%';
	
select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and (lower(b.region) like '%kolkata%' or lower(b.region) like '%west%bengal%') ;
	
select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or  lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and lower(b.region) like '%madhya%chhat%' ;
	
select 
    distinct 'IN' as market
    , case 
	  when lower(a.provider) like '%bebeauti%' then 'BB'
	  when lower(a.provider) like '%pureit%' then 'PI'
	  when lower(a.provider) like '%careli%' then 'CL'
	  when lower(a.provider) like '%btone%' then 'BT'
	  when lower(a.provider) like '%h2h%' then 'H2H'
	  when lower(a.provider) like '%digital%' then 'DL'
	  when lower(a.provider) like '%kkt%' then 'KKT'
	  when lower(a.provider) like '%lakme%' then 'LK'
	  end as provider
	, a.mobileno as mobileno
	, '1' as optin_hierarchy_level
	, 'Unilever' as optin_hierarchy_value
from southasia.pdwh_counting_mobile a
    join southasia.pdwh_ref_region b
    on a.mobileprefix = b.mobileprefix
where 
    (lower(a.provider) like '%kkt%' or lower(a.brand) like '%lifeb%' or lower(a.brand) like 'lb%' or lower(a.brand) like '%brook%' 
    or lower(a.brand) like 'rin%' or lower(a.brand) like '%rose%' or lower(a.brand) like '%wheel%' 
    or lower(a.brand) like 'close%' or lower(a.brand) like '%taaz%' or lower(a.brand) like '%tazz%' 
    or lower(a.brand) like '%red%l%' or lower(a.brand) like '%sunli%' )
    and lower(b.region) like '%uttar%';

 
	   
	
	