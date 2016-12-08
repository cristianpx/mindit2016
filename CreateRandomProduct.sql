declare @ID int
set @id = 1

while (@id <=10000)
begin 
	insert into IC_ITEM (ITEM_ID,ITEM_NAME,ITEM_DESCRIPTION,BRAND_ID,CATEGORY_ID)
	values
	 (@id,
	 'Product -' + CAST(@id as nvarchar(20)),
	 'Description -' + CAST(@id as nvarchar(20)) ,
	 ABS(Checksum(NewID()) % 10) + 1,
	 ABS(Checksum(NewID()) % 5) + 1)

	Print @id
	set @ID = @ID + 1
end
Print 'ok'
--select * from IC_ITEM