
---------------------------------------------------------------
/******************   DDL   *********************/
---------------------------------------------------------------

CREATE DATABASE MovieTicketingProject
GO

USE MovieTicketingProject
GO

IF EXISTS(Select 1 from sys.objects where name ='Customer')
DROP TABLE Customer
GO
Create Table Customer
(
CustomerID int not null IDENTITY(1000,1),
CustomerUName varchar(50),
CustomerPassword varchar(50),
CustomerName varchar(25) not null,
CustomerPhoneNumber BIGINT,
CustomerEmail varchar(50),
CustomerDOB date,
SubscriptionID int not null,
Constraint Customer_PK PRIMARY key (CustomerID),
 constraint chk_Custphone CHECK (CustomerPhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
)

CREATE NONCLUSTERED INDEX idx_CustomerName
ON Customer(
	CustomerName asc
)
CREATE NONCLUSTERED INDEX idx_CustomerUname
ON Customer(
	CustomerUname asc
)



IF EXISTS(Select 1 from sys.objects where name ='Subscription')
DROP TABLE Subscription
GO
Create table Subscription
(
SubscriptionID int,
[Subscription Type] varchar(25),
[Discount Percent] int,
Constraint Subscription_PK PRIMARY key (SubscriptionID),
Constraint Subscription_Type check ([Subscription Type] in ('Student','Premium'))
)


IF EXISTS(Select 1 from sys.objects where name ='Student')
DROP TABLE Student
GO
CREATE table Student
(
hMY int not null,
[School Name] varchar(50),
[College Start Date] date,
[College End Date] date,
)

CREATE NONCLUSTERED INDEX idx_StudentStrtEndDate
ON Student(
	[College Start Date] asc,
	[College End Date] asc
)



IF EXISTS(Select 1 from sys.objects where name ='Premium')
DROP TABLE [Premium]
GO
CREATE table [Premium]
(
hMY int not null,
[Membership Number] int,
[Membership Start Date] date,
[Membership End Date] date,
)

CREATE NONCLUSTERED INDEX idx_PemiumStrtEndDate
ON [Premium](
	[Membership Start Date] asc,
	[Membership End Date] asc
)


IF EXISTS(Select 1 from sys.objects where name ='Movie')
DROP TABLE Movie
GO
Create Table Movie
(
MovieID int not null IDENTITY(200,1),
MovieName varchar(50) not null,
[Description] Varchar(500),
Duration VARCHAR,
[Language] varchar(20),
Genre Varchar(50),
Constraint Movie_PK PRIMARY key (MovieID),
)

CREATE NONCLUSTERED INDEX idx_MovieName
ON Movie(
	MovieName asc
)
CREATE NONCLUSTERED INDEX idx_Language
ON Movie(
	[Language] asc
)
CREATE NONCLUSTERED INDEX idx_Genre
ON Movie(
	Genre asc
)




IF EXISTS(Select 1 from sys.objects where name ='Location')
DROP TABLE [Location]
GO
Create Table [Location]
(
LocationID int not null IDENTITY(100,1),
City varchar(20),
[State] VARCHAR(20),
Zipcode VARCHAR (5),
CONSTRAINT Location_PK PRIMARY KEY (LocationID),
CONSTRAINT Location_chk CHECK (Zipcode like '[0-9][0-9][0-9][0-9][0-9]')
)

CREATE NONCLUSTERED INDEX idx_LocationCityState
ON [Location](
	City asc,
	[State] asc
)
CREATE NONCLUSTERED INDEX idx_LocationState
ON [Location](
	[State] asc
)


IF EXISTS(Select 1 from sys.objects where name ='Theatre')
DROP TABLE Theatre
GO
Create Table Theatre
(
TheatreID int not null IDENTITY(400,1),
TheatreName varchar(30),
LocationID int not null,
Constraint Theatre_PK PRIMARY key (TheatreID),
CONSTRAINT Theatre_FK FOREIGN KEY (LocationID) REFERENCES [Location](LocationID) 
)

CREATE NONCLUSTERED INDEX idx_TheatreName
ON Theatre(
	TheatreName asc
)



IF EXISTS(Select 1 from sys.objects where name ='Screen')
DROP TABLE Screen
GO
Create Table Screen
(
ScreenID int not null IDENTITY(1,1),
Total_number_of_seats int not NULl,
TheatreID int not null,
CONSTRAINT Screen_PK PRIMARY KEY (ScreenID),
Constraint Screen_FK1 FOREIGN KEY (TheatreID) REFERENCES Theatre(TheatreID),
)



IF EXISTS(Select 1 from sys.objects where name ='Seat')
DROP TABLE Seat
GO
Create Table Seat
(
SeatID int not null IDENTITY(1,1),
ScreenID int not NULl,
SeatType varchar(20),
Cost numeric(10,2),
iBooked bit,
CONSTRAINT Seat_PK PRIMARY KEY (SeatID),
Constraint Seat_FK1 FOREIGN KEY (ScreenID) REFERENCES Screen(ScreenID),
)

CREATE NONCLUSTERED INDEX idx_SeatType
ON Seat(
	SeatType asc
)


IF EXISTS(Select 1 from sys.objects where name ='Feedback')
DROP TABLE Feedback
GO
Create Table Feedback
(
FeedbackID int not null IDENTITY(300,1),
Feedback_Description varchar(500),
MovieRating int,
CustomerID int,
MovieID int not null,
CONSTRAINT Feedback_PK PRIMARY KEY (FeedbackID),
CONSTRAINT Feedback_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT Feedback_FK2 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
)

CREATE NONCLUSTERED INDEX idx_FeedbackRating
ON Feedback(
	MovieRating asc
)
CREATE NONCLUSTERED INDEX idx_FeedbackByCustomer
ON Feedback(
	CustomerID asc
)
CREATE NONCLUSTERED INDEX idx_FeedbackForMovie
ON Feedback(
	MovieID asc
)


IF EXISTS(Select 1 from sys.objects where name ='ScreenMovie')
DROP TABLE ScreenMovie
GO
Create Table ScreenMovie
(
hMY int not null IDENTITY(1,1),
ScreenID int,
MovieID int,
StartDateTime datetime,
EndDateTime datetime
Constraint ScreenMovie_PK PRIMARY key (hMY),
CONSTRAINT ScreenMovie_FK1 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
CONSTRAINT ScreenMovie_FK3 FOREIGN KEY (ScreenID) REFERENCES Screen(ScreenID)
)



IF EXISTS(Select 1 from sys.objects where name ='Ticket')
DROP TABLE Ticket
GO
Create Table Ticket
(
TicketID int not null IDENTITY(1,1),
MovieID int,
CustomerID int,
ScreenID int,
TotalAmount numeric(10,2),
StartDateTime datetime,
EndDateTime datetime
Constraint Ticket_PK PRIMARY key (TicketID),
CONSTRAINT Ticket_FK1 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
CONSTRAINT Ticket_FK2 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT Ticket_FK3 FOREIGN KEY (ScreenID) REFERENCES Screen(ScreenID)
)

CREATE NONCLUSTERED INDEX idx_TicketCustomer
ON Ticket(
	CustomerID asc,
	MovieID asc
)



IF EXISTS(Select 1 from sys.objects where name ='TotalBookedSeats')
DROP TABLE TotalBookedSeats
GO
Create Table TotalBookedSeats
(
hMY int not null IDENTITY(1,1),
TicketID int,
SeatID int
Constraint TotalBookedSeats_PK PRIMARY key (hMY),
CONSTRAINT TotalBookedSeats_FK1 FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID),
CONSTRAINT TotalBookedSeats_FK2 FOREIGN KEY (SeatID) REFERENCES Seat(SeatID) 
)

IF EXISTS(Select 1 from sys.objects where name ='CustomerAudit')
DROP TABLE CustomerAudit
GO
Create Table CustomerAudit
(
hMY int not null IDENTITY(1,1),
[Log] varchar(1000),
CONSTRAINT CustomerAudit_PK PRIMARY KEY (hMY)
)




/**************************************************************************************************************/
/**********************************************   VIEW   ******************************************/
/**************************************************************************************************************/


CREATE View vW_StudentCustomers
AS
select 
CustomerID ID,
CustomerName [Name],
CustomerEmail Email,
CustomerPhoneNumber Contact,
CustomerDOB [Date of Birth]
from customer c
inner join Subscription s on c.SubscriptionID=s.SubscriptionID
where s.[Subscription Type]='Student'


CREATE View vW_MovieFeedback
AS
Select 
m.Moviename,
f.Feedback_Description,
f.MovieRating
from Movie m
inner join Feedback f on m.MovieID=f.MovieID
order by 3 desc,2







/**************************************************************************************************************/
/**********************************************   STORED PROCEDURE   ******************************************/
/**************************************************************************************************************/

/**************************************************************************************************************/
/*------------------------------------- Procedure to Add a New Customer --------------------------------------*/
/**************************************************************************************************************/

IF EXISTS(Select 1 from sys.objects where name ='AddCustomer')
DROP PROCEDURE AddCustomer
GO
CREATE PROCEDURE AddCustomer (
	@Username varchar(50),
	@Password varchar(50),
	@Name varchar(50),
	@Phone BIGINT,
	@Email varchar(50),
	@DOB date,
	@SubscriptionType varchar(20),
	@ColgName varchar(100),
	@MembershipNum BIGINT,
	@StartDate date,
	@EndDate date
	)
AS

	DECLARE @Subscription int
	DECLARE @ScopeIdentity int


	Select @Subscription= case 
	when @SubscriptionType='Student' then 1
	when @SubscriptionType='Premium' then 2
	end

	Insert into Customer
	values
	(@Username,@Password,@Name,@Phone,@Email,@DOB,@Subscription)

	set @ScopeIdentity=SCOPE_IDENTITY()

	If (@SubscriptionType='Student')
	BEGIN
		Insert into Student 
		values
		(@ScopeIdentity,@ColgName,@StartDate,@EndDate)
	END
	If (@SubscriptionType='Premium')
	BEGIN
		Insert into Premium 
		values
		(@ScopeIdentity,@MembershipNum,@StartDate,@EndDate)
	END
GO


/**************************************************************************************************************/
/*-----------------------------------------Procedure to Book Ticket-------------------------------------------*/
/**************************************************************************************************************/

IF EXISTS(Select 1 from sys.objects where name ='TicketBooking')
DROP PROCEDURE TicketBooking
GO
CREATE PROCEDURE TicketBooking(
	@CustomerID int,
	@Movie_ID int,
	@TheatreID int,
	@ScreenID int,
	@SeatID varchar(20),
	@ScreenMovie int		
		
)
AS
	DECLARE @ActualAmt numeric(10,2)
	DECLARE @Discount numeric(10,2)
	SET @Discount=0
	DECLARE @DiscountedAmt numeric(10,2)
	
	DECLARE @StartDateTime datetime
	DECLARE @EndDateTime datetime

	Select * into #Temp from dbo.fn_split(@SeatID,',')


/*Start - IF NO Seats are available*/
	IF (
	(select count(seatID) from seat where seatid in (Select [value] from #Temp))=
	(select count(seatID) from seat where seatid in (Select [value] from #Temp) and ibooked=1)
	)
	BEGIN
		select 'The selected Seats are not available'
	END
/*End - IF NO Seats are available*/



/*Start - IF Partial Seats are available*/
	IF (
	(select count(seatID) from seat where seatid in (Select [value] from #Temp))>
	(select count(seatID) from seat where seatid in (Select [value] from #Temp) and ibooked=1)
	AND
	(select count(seatID) from seat where seatid in (Select [value] from #Temp) and ibooked=1)<>0
	)
	BEGIN
	 
	 /* Return the partial seats*/

		select 'Only SeatID(s): ' + xyz.abc + ' are available.' from
		(
		SELECT distinct 1 as [ID], 
			abc = STUFF(
                 (SELECT ',' + 
				  convert(varchar,seatID) from seat where seatid in (Select [value] from #Temp) and isnull(ibooked,0)=0
				 FOR XML PATH ('')), 1, 1, ''
				 ) 
			FROM seat GROUP BY ScreenID
			) xyz
	END
/*End - IF Partial Seats are available*/


/*Start - IF ALL Seats are available*/
	IF ((select count(seatID) from seat where seatid in (Select [value] from #Temp) and ibooked=1)=0)
	BEGIN
		--Book the seats and return the amount or put in Payment table

		/*Calculate Actual Amount*/
		select @ActualAmt=sum(cost)
		from seat
		where seatid in ((Select [value] from #Temp))
		
		/*Calculate Discount based on the subscription type*/
		select  @Discount=[Discount Percent]
		from customer c
		inner join Subscription sub on c.SubscriptionID=sub.SubscriptionID
		left join student st on c.customerID=st.hMY
		left join premium pre on c.customerID=pre.hMY
		where 1=1
		and c.customerID=@CustomerID
		and getdate() between isnull(st.[College Start Date],pre.[Membership Start Date]) and isnull(st.[College End Date],pre.[Membership END Date])

		/*Calculate Discount Amount*/
		select @DiscountedAmt=(@ActualAmt*(100-@Discount))/100



		/*insert into Ticket table and generate Ticket for customer*/

		select @StartDateTime=StartDateTime, @EndDateTime=EndDateTime
		from ScreenMovie
		where hMY=@ScreenMovie

		Insert into Ticket
		values
		(@Movie_ID,@CustomerID, @ScreenID, @DiscountedAmt, @StartDateTime,@EndDateTime)

		insert into TotalBookedSeats
		select scope_identity(), [value] from #Temp


		select 'Here is you Ticket' Title,
		m.MovieName [Movie Name],
		t.ScreenID [Screen ID],
		format(t.StartDateTime,'MM/dd/yyyy') [Date],
		format(t.StartDateTime,'HH:mm') [Time],
		DATEDIFF(MINUTE,t.StartDateTime,t.EndDateTime) Duration,
		t.TotalAmount Price
		from Ticket t
		inner join Movie m on t.MovieID=m.MovieID
		where TicketID=(select max(ticketID) from Ticket)

		/*Book the passed seats*/
		Update Seat set iBooked=1 where SeatID in (select [value] from #Temp)

	END
/*END - IF ALL Seats are available*/
GO


/**************************************************************************************************************/
/*--------------------------------Procedure to Find all Theatres of a City------------------------------------*/
/**************************************************************************************************************/

IF EXISTS(Select 1 from sys.objects where name ='TheatreByCity')
DROP PROCEDURE TheatreByCity
GO
CREATE PROCEDURE TheatreByCity(
	@City varchar(50),
	@State varchar(50)
)
AS
	Select 
	l.City,
	l.[State],
	t.TheatreName
	from Theatre t 
	inner join [Location] l on t.LocationID=l.LocationID
	where  l.LocationID= (select LocationID from [location] where City=@City and [state]=@State)
GO



/**************************************************************************************************************/
/********************************   Function To Find Average Rating of Movie   ********************************/
/**************************************************************************************************************/

IF EXISTS(Select 1 from sys.objects where name ='GetFeedback_count')
DROP FUNCTION GetFeedback_count
GO
CREATE FUNCTION GetFeedback_count(
@movieid int
)
Returns numeric(10,2)
BEGIN

	DECLARE @AvgRating numeric(10,2)

	select @AvgRating=format(AVG(convert(numeric(10,2),MovieRating)),'###.##')
	from Movie m 
	inner join Feedback f on m.MovieID=f.MovieID 
	where  m.movieID= @movieid
	GROUP BY m.MovieName

	Return @AvgRating
END


/**************************************************************************************************************/
/********************************   Create Fn_Split Function  ********************************/
/**************************************************************************************************************/
IF EXISTS(Select 1 from sys.objects where name ='[fn_split]')
Drop FUNCTION [fn_split]
GO
create FUNCTION [dbo].[fn_split](  
@delimited NVARCHAR(MAX),  
@delimiter NVARCHAR(100)  
) RETURNS @table TABLE (id INT IDENTITY(1,1), [value] NVARCHAR(MAX))  
AS  
BEGIN  
DECLARE @xml XML  
SET @xml = N'<t>' + REPLACE(@delimited,@delimiter,'</t><t>') + '</t>'  
INSERT INTO @table([value])  
SELECT r.value('.','Nvarchar(MAX)') as item  
FROM @xml.nodes('/t') as records(r)  
RETURN  
END 




/**************************************************************************************************************/
/*******************   Trigger to Audit any changes made to Customer Email or Contact   ***********************/
/**************************************************************************************************************/

IF EXISTS(Select 1 from sys.objects where name ='TR_CustomerUpdate')
Drop trigger TR_CustomerUpdate
GO
CREATE TRIGGER TR_CustomerUpdate
on Customer
for Update
as
BEGIN
	DECLARE @ID int
	DECLARE @OldPhone BIGINT
	DECLARE @NewPhone BIGINT
	DECLARE @OldEmail varchar(50)
	DECLARE @NewEmail varchar(50)

	DECLARE @AuditString varchar(1000)
	Set @AuditString=''

	Select * into #Temp from inserted

	While(Exists(Select CustomerID from #Temp))
	BEGIN
		Set @AuditString=''


		Select top 1 
		@ID=CustomerID,
		@NewPhone=CustomerPhoneNumber,
		@NewEmail=CustomerEmail
		from #Temp

		Select
		@OldPhone=CustomerPhoneNumber,
		@OldEmail=CustomerEmail
		from deleted where CustomerID=@ID

		Set @AuditString='Customer detail of ID: ' + convert(varchar,@ID) + ' has been updated on ' 
		+format(getdate(), 'MM-dd-yyyy') + ' at ' + format(getdate(), 'HH:mm:ss') + '.'
		
		IF(@OldEmail<>@NewEmail)
			Set @AuditString = @AuditString + ' Email Changed from: "' + @OldEmail + '" to: "' + @NewEmail + '"'

		IF(@OldPhone<>@NewPhone)
			Set @AuditString = @AuditString + ' Phone Number Changed from: "' + @OldPhone + '" to: "' + @NewPhone + '"'

		IF(@OldEmail=@NewEmail and @OldPhone=@NewPhone)
			Set @AuditString = @AuditString + ' False Update.'
		

		Insert into CustomerAudit values (@AuditString)

		Delete from #Temp where CustomerID=@ID

	END
END


/**************************************************************************************************************/
/*******************************************   ENCRYPTION  ****************************************************/
/**************************************************************************************************************/

alter table customer add CustomerPassword_Encrypt varbinary(MAX)

create MASTER KEY 
ENCRYPTION BY PASSWORD = 'UselessProjectEncrypt*';
SELECT name KeyName,
  symmetric_key_id KeyID,
  key_length KeyLength,
  algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

CREATE CERTIFICATE UserPass  
   WITH SUBJECT = 'User Password';  
GO  
CREATE SYMMETRIC KEY UserPwd_SM
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE UserPass;  
GO  


OPEN SYMMETRIC KEY UserPwd_SM
   DECRYPTION BY CERTIFICATE UserPass;

   UPDATE dbo.Customer set   [CustomerPassword_Encrypt ] = EncryptByKey(Key_GUID('UserPwd_SM'),  CustomerPassword  )  from dbo.Customer
GO

close SYMMETRIC KEY UserPwd_SM
GO