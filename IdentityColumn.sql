Use [PD2022INTVPRP]


create Table Test1(
ID int identity(1,1),
Value nvarchar(20)
);

create Table Test2(
ID int identity(1,1),
Value nvarchar(20)
);
 --User 1
Insert into Test1 Values ('X');
Insert into Test2 Values ('zzzz');
Select * from Test1;
Select * from Test2;
Create Trigger trForInsert On Test1 for Insert
as 
Begin
Insert into Test2 Values ('YYYY');
End;
 


 --User 2 Means in new tab that tends to a new session

Insert into Test2 Values ('zzzz');
