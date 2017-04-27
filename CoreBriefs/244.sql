select 'KKT' as brand , case 
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
else b.region end as region
,case when option_provided = 1 then 'Male'
when option_provided = 2 then 'Female' end as Gender
, count(distinct a.best_mobile_number_hash) as counts
from PRM.kkt_cdr_contest_trans_ST a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where contest_file_id = 9 and option_provided = 2
and b.region in ('Bihar and Jharkhand','Maharashtra','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
group by 1,2,3
order by 1,2,3;



select 'BeBeautifull' as Brnad,case 
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
else b.region end as region, count(distinct a.best_mobile_number_hash) as total_counts
from PRM.bb_registration a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Bihar and Jharkhand','Maharashtra','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
group by 1,2;



select 'Lakme' as Brnad,case 
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
else b.region end as region, count(distinct a.best_mobile_number_hash) as total_counts
from PRM.lk_customer a join PRM.ref_mobile_lookup b on a.region_lookup_number = b.lookup_prefix5
where b.region in ('Bihar and Jharkhand','Maharashtra','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
group by 1,2;



select case when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%wheel%' then 'Wheel'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like 'close%' then 'Close UP'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like '%sunli%' then 'Sunlight'
else 'Others' end as brand,case 
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
else b.region end as region,count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and b.region in ('Bihar and Jharkhand','Maharashtra','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
group by 1,2
order by 1,2;


select case when lower(a.brand) like '%lifeb%' then 'Lifebuoy'
when lower(a.brand) like 'lb%' then 'Lifebuoy'
when lower(a.brand) like 'clinic%' then 'Clinic'
when lower(a.brand) like 'clear%' then 'Clear'
when lower(a.brand) like '%all%cl%' then 'Clear'
when lower(a.brand) like 'lux%' then 'Lux'
when lower(a.brand) like '%borwn%polson%' then 'Borwn & Polson'
when lower(a.brand) like 'b p%' then 'Borwn & Polson'
when lower(a.brand) like 'bpbs%' then 'Borwn & Polson'
when lower(a.brand) like 'bpfc%' then 'Borwn & Polson'
when lower(a.brand) like '%b&p%' then 'Borwn & Polson'
when lower(a.brand) like '%bedhe%' then 'Bedhead'
when lower(a.brand) like 'pond%' then 'Ponds'
when lower(a.brand) like 'vasel%' then 'Vaseline'
when lower(a.brand) like '%brook%' then 'Brooke Bond'
when lower(a.brand) like 'rin%' then 'RIN'
when lower(a.brand) like '%rose%' then '3 roses'
when lower(a.brand) like '%wheel%' then 'Wheel'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like 'f&l%' then 'Fair & Lovely'
when lower(a.brand) like 'fal%' then 'Fair & Lovely'
when lower(a.brand) like 'fl%' then 'Fair & Lovely'
when lower(a.brand) like '%fair%love%' then 'Fair & Lovely'
when lower(a.brand) like 'bru%' then 'Bru'
when lower(a.brand) like 'coffee%' then 'Bru'
when lower(a.brand) like '%surf%' then 'Surf Excel'
when lower(a.brand) like 'vim%' then 'Vim'
when lower(a.brand) like '%vim%' then 'Vim'
when lower(a.brand) like 'axe%' then 'Axe'
when lower(a.brand) like 'close%' then 'Close UP'
when lower(a.brand) like 'comfor%' then 'Comfort'
when lower(a.brand) like 'domex%' then 'Domex'
when lower(a.brand) like 'doemx%' then 'Domex'
when lower(a.brand) like 'dmx%' then 'Domex'
when lower(a.brand) like 'dove%' then 'Dove'
when lower(a.brand) like 'dream%' then 'Dreamflower'
when lower(a.brand) like 'ell%' then 'Ell 18'
when lower(a.brand) like '%18%' then 'Ell 18'
when lower(a.brand) like 'll%' then 'Ell 18'
when lower(a.brand) like 'kissan%' then 'Kissan'
when lower(a.brand) like '%ketchup%' then 'Kissan'
when lower(a.brand) like '%lipton%' then 'Lipton'
when lower(a.brand) like 'knor%' then 'Knorr'
when lower(a.brand) like 'kw%' then 'Kwality Wall''s'
when lower(a.brand) like 'liri%' then 'Liril'
when lower(a.brand) like 'pear%' then 'Pears'
when lower(a.brand) like 'pep%' then 'Pepsodent'
when lower(a.brand) like 'trese%' then 'Tresemme'
when lower(a.brand) like 'sunsil%' then 'Sunsilk'
when lower(a.brand) like '%taj%' then 'Taj mahal'
when lower(a.brand) like '%taaz%' then 'Taaza'
when lower(a.brand) like '%tazz%' then 'Taaza'
when lower(a.brand) like 'tigi%' then 'TIGI'
when lower(a.brand) like 'anna%' then 'Annapurna'
when lower(a.brand) like 'avian%' then 'Aviance'
when lower(a.brand) like 'ayu%' then 'Ayush'
when lower(a.brand) like 'bree%' then 'Breeze'
when lower(a.brand) like 'cif%' then 'Cif'
when lower(a.brand) like 'hama%' then 'Hamam'
when lower(a.brand) like '%brylcre%' then 'Brylcream'
when lower(a.brand) like '%caterplan%' then 'Caterplan'
when lower(a.brand) like '%captain%cook%' then 'Captain Cook'
when lower(a.brand) like 'cc%' then 'Captain Cook'
when lower(a.brand) like 'cornetto%' then 'Cornetto'
when lower(a.brand) like '%denim%' then 'Denim'
when lower(a.brand) like '%dipy%' then 'Dipy'
when lower(a.brand) like '%huggi%' then 'Huggies'
when lower(a.brand) like '%kkd%' then 'kkd'
when lower(a.brand) like '%kotex%' then 'Kotex'
when lower(a.brand) like '%magic%' then 'Magic'
when lower(a.brand) like '%modern%' then 'Modern'
when lower(a.brand) like 'ok%' then 'OK'
when lower(a.brand) like '%red%l%' then 'Red Label'
when lower(a.brand) like 'rexo%' then 'Rexona'
when lower(a.brand) like '%sunli%' then 'Sunlight'
else 'Others' end as brand,case 
when lower(b.region) like '%uttar%' then 'Uttar Pradesh'
else b.region end as region, count(distinct a.mobileno)
from prmprogrammepdwheudb.southasia.pdwh_counting_mobile a
inner join southasia.pdwh_ref_region b
on a.mobileprefix = b.mobileprefix
where a.optinhulbrand in ('A','C') and a.ismobilevalid = 'Y'
and b.region in ('Bihar and Jharkhand','Maharashtra','Rajasthan','Uttar Pradesh (East)','Uttar Pradesh (West) and Uttarakhand')
group by 1,2
order by 1,2;

