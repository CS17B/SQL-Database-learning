  /*creating a database sql query*/
Create Database sample2

/*renaming the database using the normal query*/
ALTER database sample2 Modify Name = Sample3

/*Renaming the database name using stored prodecure*/
exec sp_renamedb 'sample3','sample2'

/*dropping the table*/
Drop Database sample2


/*creating a table*/
Create table tblgender 
(
ID int NOT NULL Primary Key,
Gender nvarchar(50) NOT NULL
)


/*Syntax for foreign key with other table
ALTER table Foreignkeytable add constraint foreignkeytable_foreignkeycolumn_FK
FOREIGN KEY (ForeignkeyColumn) references primarykeytable(PrimarykeyColumn)
*/

Alter table Tblperson add constraint Tblperson_GenderId_FK
foreign key (GenderId) references tblgender(ID)

Alter table Tblperson 
drop constraint Tblperson_GenderId_FK


/*Adding a default constraint*/
Select * from tblgender
Select * from tblperson

Insert into tblperson (ID,NAME,EMAILId) Values (5,'rsh','s@r.com')
Delete from tblperson where id = 5

/*Default constriant setting*/
ALTER TABLE tblperson
ADD CONSTRAINT df_tblperson_genderid
DEFAULT 3 FOR GenderID

/*adding a new column with default constraint*/
alter table tblperson
add tgrt int NULL
constraint df_tblperson_genderid Default 3


/*Dropping the constriant*/
ALTER TABLE tblperson
DROp  CONSTRAINT df_tblperson_genderid

/*dropping a column from a table*/
ALTER table tblperson
drop column tgrt

Alter table tblperson
add Age int

/*creating the check constraint*/
ALTER table tblperson
Add Constraint CK_tblPerson_Age CHECK (AGE > 0 AND AGE < 150)

Insert into tblperson Values (8,'rajgarg','r@rat.com',1,50)
/*Alt F1*/

create table tblperson1(
 PersonID int,
 Name nvarchar(50)
)

Select * from tblpersoninformation1
Delete  from tblpersoninformation1

Insert into tblpersoninformation1 Values ('um')

/*set indentity constriant on or off*/
set identity_insert tblpersoninformation1 off

/*query to reseed the identity value*/
DBCC CHECKIDENT( tblpersoninformation1, reseed,0) 

Insert into tblperson values (111,'ri','r@fi.com',2,20)

/*trigger creation*/
CREATE TRIGGER trforinsert
on tblperson for Insert
as
Begin
   Insert into tblpersoninformation1 Values('teja') 
End


Select SCOPE_IDENTITY()
Select @@IDENTITY
Select IDENT_CURRENT(tblpersoninformation1)

/*unqiue key constraint*/
Alter table Tblperson
add constraint UK_Tblperson_Email
Unique(Email)

Select * from Tblperson
Select * from tblpersoninformation1
Delete from Tblperson where id = 5

/*Dropping constraint of unique key*/
Alter table Tblperson
drop constraint UK_Tblperson_Email

/*
USE [sample12]
GO

SELECT [ID]
      ,[Name]
      ,[Email]
      ,[GenderId]
      ,[Age]
  FROM [dbo].[Tblperson]
GO*/


Select * from tblperson 

/*selecting distinct row from the table*/
Select distinct Name from Tblperson

/*equality operator*/
Select * from tblperson where GenderId = 1

/*not equal operator in sql <> or != */
Select * from tblperson where GenderId != 1



