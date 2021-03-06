/****** Script for SelectTopNRows command from SSMS  ******/

truncate table [Unilever_CampaignDashboard].[dbo].[lk_transaction]

SELECT  distinct [service_product_discount]
FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction]

delete FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction]
where cast(isnull(ltrim(rtrim([amount])),0) as float)<0



--discount,package,product,series,service

SELECT  [store_id],[store_name],[transaction_id],[customer_id],[trans_date],[ticket_number],[employee]
,[service_product_discount],[lk_category],[brand],[lk_code],[lk_description]
,[quantity],[uom],[amount],[quick_pass_id_hash],[membership_id],[tier],[best_mobile_number_hash]
FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction]
where len([best_mobile_number_hash])>0


---Calculating the RFM Values for people who have enrolled from April 1st 2014

drop table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

SELECT [best_mobile_number_hash],max(cast([trans_date] as date)) [Recency]
,count(distinct [trans_date]) [Frequency],sum(cast(isnull(ltrim(rtrim([amount])),0) as float)) [Monetary]
into [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]
FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction]
where [service_product_discount] in ('product','service')
group by [best_mobile_number_hash]



-----creating additional columns

---alter table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] drop column [RecencyQuintiles] ,[FrequencyQuintiles] ,[MonetaryQuintiles] ,outliers

alter table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] add [RecencyQuintiles] int,[FrequencyQuintiles] int,[MonetaryQuintiles] int,outliers int


--select max(Frequency),max(Monetary) from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]


-----selecting list for determing the outliers

select Frequency,count(*) from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] group by Frequency order by 1

select MonetaryValue,sum(Counts) from (
select case 
when Monetary>=0 and Monetary <=1000 then '0-1000'
when Monetary>1000 and Monetary <=2500 then '1001-2500'
when Monetary>2500 and Monetary <=5000 then '2501-5000'
when Monetary>5000 and Monetary <=7500 then '5001-7500'
when Monetary>7500 and Monetary <=10000 then '7501-10000'
when Monetary>10000 and Monetary <=15000 then '10001-15000'
when Monetary>15000 and Monetary <=20000 then '15000-20000'
when Monetary>20000 then '20000>' end MonetaryValue
 ,count(*) Counts from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] 
--where Monetary>5000000
group by Monetary) as a group by MonetaryValue
order by 1 



----removing outlier

-- all frequency of visit >22 is mapped an outlier

update [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]
set [Outliers]= case when [Frequency]>30 then 1 else 0 end 


-- all monteary value less than equal to 0 and all values greater than 50,00,000 is mapped an outlier

update [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]
set [Outliers]= case when [Monetary]>15000 then 1 when [Monetary]<=0 then 1 else 0 end
where [Outliers] =0

----moving outliers to a new table
drop table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_outliers] 

select * into [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_outliers]  from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] where [Outliers]=1

---deleting the outliers
delete from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] where [Outliers]=1

select * from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_outliers] 

--------------


----recency Quintiles 

--drop table #t

Declare @MaxDate datetime
set @MaxDate=(select max([Recency]) from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM])


select [best_mobile_number_hash],[Recency],datediff(day,[Recency],@MaxDate)[RecencyRange],ROW_NUMBER() over(order by [Recency] desc) RowNumber
into #t
from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

alter table #t add [RecencyQuintiles] int


Declare @MaxRownumber bigint,@q1 int,@q2 int,@q3 int,@q4 int,@q5 int,@i int
set @MaxRownumber=(select max([RowNumber]) from #t)
set @q1=round(@MaxRownumber*.20,0)
set @q2=round(@MaxRownumber*.40,0)
set @q3=round(@MaxRownumber*.60,0)
set @q4=round(@MaxRownumber*.80,0)
set @q5=round(@MaxRownumber*1,0)


update #t
set [RecencyQuintiles]= case
when [RowNumber]>=0 and [RowNumber]<=@q1 then 5
when [RowNumber]>@q1 and [RowNumber]<=@q2 then 4
when [RowNumber]>@q2 and[RowNumber]<=@q3 then 3
when [RowNumber]>@q3 and [RowNumber]<=@q4 then 2
when [RowNumber]>@q4 then 1 end

Declare @max int,@min int
set @max=(select max([RecencyRange]) from #t where [RecencyQuintiles]=5)
set @min=(select min([RecencyRange]) from #t where [RecencyQuintiles]=4)



if(@max=@min)
	begin
	update #t set [RecencyQuintiles]=5 where [RecencyRange]= @max
	end



Declare @max1 int,@min1 int
set @max1=(select max([RecencyRange]) from #t where [RecencyQuintiles]=4)
set @min1=(select min([RecencyRange]) from #t where [RecencyQuintiles]=3)

select @max1,@min1

if(@max1=@min1)
	begin
	update #t set [RecencyQuintiles]=4 where [RecencyRange]= @max1
	end


Declare @max2 int,@min2 int
set @max2=(select max([RecencyRange]) from #t where [RecencyQuintiles]=3)
set @min2=(select min([RecencyRange]) from #t where [RecencyQuintiles]=2)

select @max2,@min2

if(@max2=@min2)
	begin
	update #t set [RecencyQuintiles]=3 where [RecencyRange]= @max2
	end


Declare @max3 int,@min3 int
set @max3=(select max([RecencyRange]) from #t where [RecencyQuintiles]=2)
set @min3=(select min([RecencyRange]) from #t where [RecencyQuintiles]=1)

select @max3,@min3

if(@max3=@min3)
	begin
	update #t set [RecencyQuintiles]=2 where [RecencyRange]= @max3
	end



update [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]
set [RecencyQuintiles]=b.[RecencyQuintiles]
from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] a
inner join #t b on a.[best_mobile_number_hash]=b.[best_mobile_number_hash]



drop table #t


--------------

--------------------frequency quintiles


select [best_mobile_number_hash],[Frequency],ROW_NUMBER() over(order by [Frequency] asc) RowNumber
into #t
from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

alter table #t add [Quintiles] int


update #t set [Quintiles]= 1 where [Frequency]=1
update #t set [Quintiles]= 2 where [Frequency]=2


Declare @MaxRownumber float,@MinRownumber float,@q1 int,@q2 int,@q3 int,@q4 int,@q5 int,@i int
set @MaxRownumber=(select count([RowNumber]) from #t where [Quintiles] is null)
--select round(@MaxRownumber/3,0)

set @MinRownumber=(select min([RowNumber]) from #t where [Quintiles] is null)


set @q1=(select min([RowNumber]) from #t where [Quintiles] is null)
set @q2=@q1+round(@MaxRownumber/3,0)
set @q3=@q2+round(@MaxRownumber/3,0)
set @q4=@q3+round(@MaxRownumber/3,0)


update #t
set [Quintiles]= case
when [RowNumber]>=@q1 and [RowNumber]<=@q2 then 3
when [RowNumber]>@q2 and [RowNumber]<=@q3 then 4
when [RowNumber]>@q3 and[RowNumber]<=@q4 then 5 end
where [Quintiles] is null


--select [Quintiles],count(*) from #t group by [Quintiles]

Declare @max float,@min float
set @max=(select max(round([Frequency],0)) from #t where [Quintiles]=3)
set @min=(select min(round([Frequency],0)) from #t where [Quintiles]=4)

select @max,@min

if(@max=@min)
	begin
	update #t set [Quintiles]=3 where round([Frequency],0)= @max
	end


Declare @max1 float,@min1 float
set @max1=(select max(round([Frequency],0)) from #t where [Quintiles]=4)
set @min1=(select min(round([Frequency],0)) from #t where [Quintiles]=5)

select @max1,@min1

if(@max1=@min1)
	begin
	update #t set [Quintiles]=4 where round([Frequency],0)= @max1
	end


	update [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]
set [FrequencyQuintiles]=b.[Quintiles]
from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] a
inner join #t b on a.[best_mobile_number_hash]=b.[best_mobile_number_hash]


drop table #t


--------------

---
-------------------monetary Quintiles 


select [best_mobile_number_hash],[Monetary],ROW_NUMBER() over(order by [Monetary] asc) RowNumber
into #t
from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

alter table #t add [Quintiles] int


Declare @MaxRownumber bigint,@q1 int,@q2 int,@q3 int,@q4 int,@q5 int,@i int
set @MaxRownumber=(select max([RowNumber]) from #t)
set @q1=round(@MaxRownumber*.20,0)
set @q2=round(@MaxRownumber*.40,0)
set @q3=round(@MaxRownumber*.60,0)
set @q4=round(@MaxRownumber*.80,0)
set @q5=round(@MaxRownumber*1,0)


update #t
set [Quintiles]= case
when [RowNumber]>=0 and [RowNumber]<=@q1 then 1
when [RowNumber]>@q1 and [RowNumber]<=@q2 then 2
when [RowNumber]>@q2 and[RowNumber]<=@q3 then 3
when [RowNumber]>@q3 and [RowNumber]<=@q4 then 4
when [RowNumber]>@q4 then 5 end

Declare @max float,@min float
set @max=(select max(round([Monetary],0)) from #t where [Quintiles]=1)
set @min=(select min(round([Monetary],0)) from #t where [Quintiles]=2)

select @max,@min

if(@max=@min)
	begin
	update #t set [Quintiles]=1 where round([Monetary],0)= @max
	end


Declare @max1 float,@min1 float
set @max1=(select max(round([Monetary],0)) from #t where [Quintiles]=2)
set @min1=(select min(round([Monetary],0)) from #t where [Quintiles]=3)

select @max1,@min1

if(@max1=@min1)
	begin
	update #t set [Quintiles]=2 where round([Monetary],0)= @max1
	end
	
Declare @max2 float,@min2 float
set @max2=(select max(round([Monetary],0)) from #t where [Quintiles]=3)
set @min2=(select min(round([Monetary],0)) from #t where [Quintiles]=4)

select @max2,@min2

if(@max2=@min2)
	begin
	update #t set [Quintiles]=3 where round([Monetary],0)= @max2
	end
	
Declare @max3 float,@min3 float
set @max3=(select max(round([Monetary],0)) from #t where [Quintiles]=4)
set @min3=(select min(round([Monetary],0)) from #t where [Quintiles]=5)

select @max3,@min3

if(@max3=@min3)
	begin
	update #t set [Quintiles]=4 where round([Monetary],0)= @max3
	end
	
	
select [Quintiles],count(*) from #t group by[Quintiles]


update [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]
set [MonetaryQuintiles]=b.[Quintiles]
from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM] a
inner join #t b on a.[best_mobile_number_hash]=b.[best_mobile_number_hash]


drop table #t

select * from [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]


---------------

----------creating the v1 table
--drop table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_V1]    


--SELECT [best_mobile_number_hash]
--      ,[Recency]
--      ,[Frequency]
--      ,[Monetary]
--      ,[RecencyQuintiles]
--      ,[FrequencyQuintiles]
--      ,[MonetaryQuintiles]
--      ,[Outliers]
--                  ,([RecencyQuintiles]*0.5+[FrequencyQuintiles]*0.25+[MonetaryQuintiles]*0.25) as  "RFM_Final_SCORE"
--                  ,case when ([RecencyQuintiles]*0.5+[FrequencyQuintiles]*0.25+[MonetaryQuintiles]*0.25) <=2 then 'RED'
--                                                when ([RecencyQuintiles]*0.5+[FrequencyQuintiles]*0.25+[MonetaryQuintiles]*0.25) BETWEEN 2 and 2.8 then 'BRICK RED'       
--                                                when ([RecencyQuintiles]*0.5+[FrequencyQuintiles]*0.25+[MonetaryQuintiles]*0.25) BETWEEN 3.5 and 4.5 then 'BLUE'
--                                                when ([RecencyQuintiles]*0.5+[FrequencyQuintiles]*0.25+[MonetaryQuintiles]*0.25)>4.5 then 'GREEN'
--                                                when ([RecencyQuintiles]*0.5+[FrequencyQuintiles]*0.25+[MonetaryQuintiles]*0.25) BETWEEN 2.8 AND 3.5 then 'YELLOW'
--                                                END RFM_Colour
--                                ,CONCAT([RecencyQuintiles],[FrequencyQuintiles],[MonetaryQuintiles]) AS "COMBINATION"
--                  INTO [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_V1]               
--                  FROM [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

drop table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_V1]    


SELECT [best_mobile_number_hash]
      ,[Recency]
      ,[Frequency]
      ,[Monetary]
      ,[RecencyQuintiles]
      ,[FrequencyQuintiles]
      ,[MonetaryQuintiles]
      ,[Outliers]
                  ,([RecencyQuintiles]*0.25+[FrequencyQuintiles]*0.5+[MonetaryQuintiles]*0.25) as  "RFM_Final_SCORE"
                  ,case when ([RecencyQuintiles]*0.25+[FrequencyQuintiles]*0.5+[MonetaryQuintiles]*0.25) <=2 then 'RED'
                                                when ([RecencyQuintiles]*0.25+[FrequencyQuintiles]*0.5+[MonetaryQuintiles]*0.25) BETWEEN 2 and 2.8 then 'BRICK RED'       
                                                when ([RecencyQuintiles]*0.25+[FrequencyQuintiles]*0.5+[MonetaryQuintiles]*0.25) BETWEEN 3.5 and 4.5 then 'BLUE'
                                                when ([RecencyQuintiles]*0.25+[FrequencyQuintiles]*0.5+[MonetaryQuintiles]*0.25)>4.5 then 'GREEN'
                                                when ([RecencyQuintiles]*0.25+[FrequencyQuintiles]*0.5+[MonetaryQuintiles]*0.25) BETWEEN 2.8 AND 3.5 then 'YELLOW'
                                                END RFM_Colour
                                ,CONCAT([RecencyQuintiles],[FrequencyQuintiles],[MonetaryQuintiles]) AS "COMBINATION"
                  INTO [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_V1]               
                  FROM [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

				  





-------customerwise discount and packages taken
--discount,package,product,series,service

SELECT  [store_id],[store_name],[transaction_id],[customer_id],[trans_date],[ticket_number],[employee]
,[service_product_discount],[lk_category],[brand],[lk_code],[lk_description]
,[quantity],[uom],[amount],[quick_pass_id_hash],[membership_id],[tier],[best_mobile_number_hash]
FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction]
where len([best_mobile_number_hash])>0


---Calculating the RFM Values for people who have enrolled from April 1st 2014

drop table [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM]

SELECT [best_mobile_number_hash],sum(cast(isnull(ltrim(rtrim([amount])),0) as float)) [Discount]
into [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_Discount]
FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction]
where [service_product_discount] in ('discount')
group by [best_mobile_number_hash]





---final store wise mapping customers RFM
SELECT  a.[store_name],[store_category],a.[best_mobile_number_hash],[service_product_discount],[lk_category],[lk_description]
,[tier],[Discount],[RecencyQuintiles] ,[FrequencyQuintiles] ,[MonetaryQuintiles] ,RFM_Final_SCORE,RFM_Colour,COMBINATION
FROM [Unilever_CampaignDashboard].[dbo].[lk_transaction] a
inner join [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_V1] b on a.best_mobile_number_hash=b.best_mobile_number_hash
inner join [Unilever_CampaignDashboard].[dbo].[lk_storemaster] c on a.[store_name]=c.[store_name]
left outer join [Unilever_CampaignDashboard].[dbo].[temp_20170208_RFM_Discount] d on  a.best_mobile_number_hash=d.best_mobile_number_hash
--where len([best_mobile_number_hash])>0





---------store wise 

SELECT billstore,[best_mobile_number_hash]
,STUFF((SELECT '; ' + US.[SubSectionName] 
    FROM #t1 US
    WHERE US.[best_mobile_number_hash] = SS.[best_mobile_number_hash] and US.billstore=SS.billstore
    FOR XML PATH('')), 1, 1, '') [SECTORS/USERS]
FROM #t1 SS
GROUP BY  SS.billstore,[best_mobile_number_hash]
ORDER BY 1,2
