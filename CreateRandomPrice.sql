declare @ID int
set @id = 1

while (@id <=100000)
begin 
	insert into PR_PRICE (ITEM_ID,PRICE_DATE,PRICE_VALUE)
	values
	 (@id,

	 CAST(DATEADD(day, ABS(Checksum(NewID()) % 10) + 1, GETDATE()) as date),
	 ABS(Checksum(NewID()) % 100) + 1)

	Print @id
	set @ID = @ID + 1
end
Print 'ok'
--select * from PR_PRICE order by price_date desc

--truncate table PR_PRICE