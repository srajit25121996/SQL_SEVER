Use [PD2022INTVPRP]

create Table Test3(
ID int PRIMARY KEY,
P_Id int,
Name nvarchar(20)
);


--DROP TABLE Test3;

Select * from Test3;

Alter Table Test3
Add Constraint UQ_Test3_P_ID Unique(P_ID);

Insert into Test3 Values(1,2,'Hello');
-- This line gives below error Insert into Test3 Values(2,2,'Bye');
--Violation of UNIQUE KEY constraint 'UQ_Test3_P_ID'. Cannot insert duplicate key in object 'dbo.Test3'. The duplicate key value is (2).
--The statement has been terminated.



Alter Table Test3
Drop Constraint UQ_Test3_P_ID;

--Below Statement will work after we drop the Unique constraint.
Insert into Test3 Values(2,2,'Bye');


