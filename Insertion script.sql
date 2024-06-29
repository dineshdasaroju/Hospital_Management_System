SET NOCOUNT ON

Print 'Master Data Insert'
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Company',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Staff',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('StaffDependent',1,1)
GO

Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Cardiology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Gynaecology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Medicine',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nephrology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Orthopedic',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Paediatrics',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Neurology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Surgery',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Dental',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('ENT',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Administration',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Reception',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Billing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Store',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Account',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Maintainance',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Bio-Medical',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Computer(IT)',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nursing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pharmacy',0,1,1)
GO
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Male',1,1)
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Female',1,1)
GO
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Star Health',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Vidal Healthcare',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Aditya Birla',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('HDFC Ergo',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('ICICI Lombard',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('The oriental Insurance company',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Care Health Insurance',1,1)
GO
Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Indian',1,1)
GO
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Spouse',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Child',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Friend',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Mother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Son',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Daughter',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Mother',1,1)
GO
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Cardiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Gynaecology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Medicine',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nephrology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Orthopedic',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Paediatrics',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Neurology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Surgery',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Dental',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('ENT',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Pathology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Radiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nursing',1,1)
GO
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 1',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 2',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 3',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 4',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 5',1,1)
GO
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Male Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Female Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('pediatric ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Special Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Semi Special ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward II',1,1,1)
GO
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 1',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 2',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 3',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 4',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 5',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 6',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 7',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 8',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 9',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 10',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 11',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 12',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 13',7,1,1)
GO

-- Bed

Declare @i INT = 1
While (@i<=20)
BEGIN
Insert into Bed(Name,WardID,RoomID,AddedBy,UpdatedBy) Values ('Bed-'+CONVERT(varchar(5),@i),1,NULL,1,1)
-- SELECT @i

Set @i = @i+1
END
Go

Declare @i INT = 1
while (@i <= 20)
BEGIN
Insert into Bed(Name,WardID,RoomID,AddedBy,UpdatedBy) Values('Bed-'+Convert(varchar(5),@i),2,NULL,1,1)
Set @i = @i + 1
END
Go

Declare @i INT
set @i = 1 
While (@i <= 5)
BEGIN
Insert into Bed(Name,WardID,RoomID,AddedBy,UpdatedBy) Values('Bed-'+convert(varchar(5),@i),NULL,1,1,1)
set @i = @i + 1
END
Go

Declare @i INT
set @i = 1
While (@i <= 4)
BEGIN
Insert into Bed(Name,WardID,RoomID,AddedBy,UpdatedBy) values('Bed-'+convert(varchar(5),@i),NULL,2,1,1)
set @i = @i + 1
END
Go

-- Nationality Table

Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Indian',1,1)
GO

-- Country Table 

Insert Into Country(Name,NationalityId,AddedBy,UpdatedBy) Values ('India',1,1,1)
GO

-- state Table 

Insert Into State(Name,CountryID,AddedBy,UpdatedBy) Values ('maharashtra',1,1,1)
GO
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Pune',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Nagpur',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Mumbai',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Nasik',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Aurangabad',1,1,1)
GO
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('OPD',1,1)
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('IPD-General',1,1)
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('IPD-Special',1,1)
Go

-- Staff Table 
Declare @MinDeptID INT = (select min(DepartmentID) from Department where IsClinical = 0 )
Declare @MaxDeptID INT = (select max(DepartmentID) from Department where IsClinical = 0 )

While(@MinDeptID <= @MaxDeptID)
Begin
    Declare @i INT = 1
		While(@i <= 10)
		BEGIN
		Insert into Staff(DepartmentID,
		FirstName,
		MiddleName,
		LastName,
		GenderID,
		DateOfBirth,
		ContactNo1,
		ContactNO2,
		Email,
		AddressLine1,
		AddressLine2,
		Pincode,
		CityID,
		AddedBy,
		UpdatedBy
		)
		Values(@MinDeptID,
		'SFname-'+Convert(varchar(5),@MinDeptID)+'-'+convert(varchar(5),@i),
		'SMname-'+convert(varchar(5),@MinDeptID)+'-'+convert(varchar(5),@i),
		'SLname-'+convert(varchar(5),@MinDeptID)+'-'+convert(varchar(5),@i),
		(select Top 1 GenderID from Gender order by NEWID() asc),
		(select Getdate()-10000-(select RAND()*(245-10)+10)),
		'1234595011',
		'1234595013',
		'SFname'+convert(varchar(5),@MinDeptID)+'-'+convert(varchar(5),@i)+'@gmail.com',
		'Address Line1',
		'Address Line2',
		'123456',
		(select Top 1 cityid from city order by NEWID()),
		1,1)
		
		set @i = @i + 1
	END

set @MinDeptID = @MinDeptID + 1
END
Go

-- Doctor Table

Declare @MinDeptID INT = (select min(DepartmentID) From Department where IsClinical = 1)
Declare @MaxDeptID INT = (select max(DepartmentID) From Department where IsClinical = 1)

While (@MinDeptID <= @MaxDeptID)
BEGIN
	Declare @i INT = 1
		While (@i <= 3) -- Three doctors for ecah department
		BEGIN
		Insert into Doctor(DepartmentID,
		FirstName,
		MiddleName,
		LastName,
		Qualification,
		GenderID,
		DateOfBirth,
		ContactNo1,
		ContactNO2,
		Email,
		AddressLine1,
		AddressLine2,
		Pincode,
		CityID,
		AddedBy,
		UpdatedBy
		)
		Values(@MinDeptID,
		'Dr.DFname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i),
		'DMname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i),
		'DLname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i),
		'MBBS.MD',
		(Select Top 1 GenderID From Gender Order by NEWID()),
		(Select Getdate()-10000-(select Rand()*245-10)+10),
		'1564894518',
		'1234548991',
		'DFname'+Convert(varchar(5),@MinDeptID)+Convert(varchar(5),@i)+'@gmail.com',
		'Address Line 1',
		'Address Line 2',
		'50055',
		(Select Top 1 CityID from city order by NEWID()),
		1,
		1
		)
		set @i = (@i + 1)
		END

Set @MinDeptID  = @MinDeptID + 1
END
Go

-- Service OPD Table

CREATE TABLE #Temp
(ID INT IDENTITY(1,1),
ServiceName Varchar(200))
INSERT INTO #Temp Values('Consultation'),
('Follow-up-Consultation'),
('Procedure'),
('Operation Charges'),
('Anesthesist Charges'),
('OT Charges')
Go

Declare @i INT = (Select Min(ID) From #Temp)
Declare @serviceName Varchar(200)
While (@i <= (select Max(ID) from #Temp))
BEGIN
	
	set @serviceName = (select serviceName From #Temp where ID = @i)

	-- Internal loop
Declare @MinDeptID INT = (Select min(ServiceCategoryID) From ServiceCategory 
	where Name Not in ('Pathology','Radiology','Nursing'))
Declare @MaxDeptID INT = (select Max(ServiceCategoryID) From ServiceCategory
	where Name Not in ('Pathology','Radiology','Nursing'))
				While (@MinDeptID <= @MaxDeptID)
				Begin
					Insert into Service
					(
					Name,
					ServiceCategoryID,
					Rate,
					ServiceTypeID,
					CompanyID,
					AddedBy,
					UpdatedBy
					)values(
					@serviceName,
					@MinDeptID,
					200,
					1,
					NULL,
					1,
					1
					) 
				Set @MinDeptID = @MinDeptID + 1
				END
set @i = @i + 1
END
Go

-- service IPD
Truncate Table #temp
Insert into #temp values
('Bed Charges'),
('Nursing Charges'),
('IPD Visit Charges'),
('Operation Charges'),
('Anesthesist Charges'),
('OT Charges'),
('O2 Charges'),
('Procedure')

Declare @i INT = (Select Min(ID) From #Temp)
Declare @serviceName Varchar(200)
While (@i <= (select max(ID) from #Temp))
BEGIN
		set @serviceName = (select serviceName from #Temp where ID = @i)
		
		Declare @MinDeptID INT = (select min(servicecategoryid) from ServiceCategory
		where Name Not in ('Pathology','Radiology','Nursing'))
		Declare @MaxDeptID INT = (select Max(ServiceCategoryID) From ServiceCategory
	    where Name Not in ('Pathology','Radiology','Nursing'))
				While (@MinDeptID <= @MaxDeptID)
				Begin
					Insert into Service
					(
					Name,
					ServiceCategoryID,
					Rate,
					ServiceTypeID,
					CompanyID,
					AddedBy,
					UpdatedBy
					)values(
					@serviceName,
					@MinDeptID,
					400,
					2,
					NULL,
					1,
					1
					) -- servicetypeId IPD General
				Insert into Service	
				(
					Name,
					ServiceCategoryID,
					Rate,
					ServiceTypeID,
					CompanyID,
					AddedBy,
					UpdatedBy
					)values(
					@serviceName,
					@MinDeptID,
					500,
					3,
					NULL,
					1,
					1
					) -- servicetypeid IPD special

				Set @MinDeptID = @MinDeptID + 1
				END
set @i = @i + 1
END
Go

-- service Pathology Test
Truncate Table #temp
insert into #temp values
('SGOT (AST)')
,('SGPT (ALT)')
,('ALBUMIN')
,('WIDAL')
,('BILLIRUBIN TOTAL')
,('BILLIRUBIN DIRECT')
,('BLOOD GROUP')
,('PERIPHERAL SMEAR')
,('RETICULOCYTE COUNT')
,('TOTAL WBC COUNT')
,('CBC')
,('ZINC (SERUM / URINE)')
,('VITAMIN D 25 HYDROXY')
,('VITAMIN A')
,('UROBILINOGEN (URINE)')
,('BILIRUBIN (URINE)')
Go

Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)		
	    Declare @ServiceCategoryId INT=(Select ServiceCategoryId from ServiceCategory where Name In ('Pathology'))
		Insert Into Service 
				 (Name,
				 ServiceCategoryId,
				 Rate,
				 ServiceTypeId,
				 CompanyId,
				 AddedBy,
				 UpdatedBy
				 )
				 Values(
				 @ServiceName,
				 @ServiceCategoryId,
				 300,
				 1,
				 NULL,
				 1,
				 1
				 )  --ServiceTypeId- OPD
		Insert Into Service (
				 Name,
				 ServiceCategoryId,
				 Rate,
				 ServiceTypeId,
				 CompanyId,
				 AddedBy,
				 UpdatedBy)
				 Values(
				 @ServiceName,
				 @ServiceCategoryId,
				 400,
				 2,
				 NULL,
				 1,
				 1)  --ServiceTypeId- IPD General
		Insert Into Service(
				 Name,
				 ServiceCategoryId,
				 Rate,ServiceTypeId,
				 CompanyId,
				 AddedBy,
				 UpdatedBy)
				 Values(
				 @ServiceName,
				 @ServiceCategoryId,
				 500,
				 3,
				 NULL,
				 1,
				 1
				 )  --ServiceTypeId- IPD Special				
		Set @i=@i+1
 END
 Go

 -- service Radiology Test

Truncate Table #temp
insert into #Temp values
('X-RAY')
,('CT Scan')
,('Sonography')

Declare @i INT = (select min(id) from #Temp)
Declare @serviceName varchar(200)
while (@i <= (select max(id) from #Temp))
BEGIN
     
	 Set @serviceName = (select serviceName from #Temp where ID = @i)
	 Declare @servicecategoryid INT = (select ServiceCategoryID from ServiceCategory 
	 where Name in ('Radiology'))
	 Insert into Service(
	 Name,
	 ServiceCategoryId,
	 Rate,
	 ServiceTypeId,
	CompanyId,
	AddedBy,
	UpdatedBy)
	Values(
	       @ServiceName,
		   @ServiceCategoryId,
		   300,
		   1,
		   NULL,
		   1,
		   1) -- service Type ID - OPD
		   Insert into Service(
		         Name,
				 ServiceCategoryId,
				 Rate,ServiceTypeId,
				 CompanyId,
				 AddedBy,
				 UpdatedBy)
				 Values(
				 @ServiceName,
				 @ServiceCategoryId,
				 400,
				 2,
				 NULL,
				 1,
				 1 ) -- servicetypeid - ipd General

            Insert into Service(
			     Name,
				 ServiceCategoryId,
				 Rate,ServiceTypeId,
				 CompanyId,
				 AddedBy,
				 UpdatedBy)
				 Values(
				 @ServiceName,
				 @ServiceCategoryId,
				 500,
				 3,
				 NULL,
				 1,
				 1) -- serviceid type id - IPD special

       set @i = @i + 1
END
Go

-- Patient

Declare @i INT = 1
While (@i <= 5000)
BEGIN

INSERT INTO Patient(
		FirstName,
		MiddleName,
		LastName,
		GenderID,
		DateOfBirth,
		ContactNo1,
		ContactNo2,
		Email,
		AddressLine1,
		AddressLine2,
		Pincode,
		CityID,
		AddedBy,
		UpdatedBy
		)values(
		'PFname'+'_'+Convert(varchar(15),@i),
		'PMname'+'_'+Convert(varchar(15),@i),	
		'PLname'+'_'+Convert(varchar(15),@i),
		 (Select Top 1 GenderID from Gender order by NEWID()),
		 (Select GETDATE()-10000-( SELECT RAND()*(245-10)+10)),
		 '1234567890',
		 '1234567890',
		 'PFname'+Convert(varchar(15),@i)+'@gmail.com',      
		  'Address Line 1',
		  'Address Line 2',
		  '123456',
		  (Select Top 1 CityId from City order by NEWID()),
			1,         
			1)
   set @i = @i + 1

END
Go

-- Visit

Declare @i INT = 1
While (@i <= 1000)
BEGIN
	
	INSERT INTO Visit(
	PatientCategoryID,
	PatientID,
	DoctorID,
	UnitID,
	VisitDate,
	OPDNumber,
	AddedBy,
	UpdatedBy
	) values (
	 (Select Top 1 PatientCategoryID from PatientCategory order by NEWID()),
	 (select Top 1 PatientID from Patient order by NEWID()),
	 (select Top 1 DoctorID from Doctor order by NEWID()),
	 (select Top 1 UnitID from Unit order by NEWID()),
	 (select GETDATE()-300-(select Rand()*245-10)+10),
	 @i,
	 1,
	 1
	 )
	 set @i = @i + 1
END
Go

-- Charge Table

Declare @MinvisitID INT = (select min(VisitID) from Visit)
Declare @MaxvisitID INT = (select max(visitID) from Visit)
while (@MinvisitID <= @MaxvisitID)
BEGIN
	 
	 INSERT INTO Charge(
		VisitID,
		AdmissionId,
		ServiceId,
		Rate,
		Amount,
		Quantity,
		AddedBy,
		UpdatedBy
		)values(
		@MinvisitID,
		NULL,
		(select Top 1 serviceid from Service where ServiceTypeID = 1 order by NEWID()),
		0,
		0,
		1,
		1,
		1
		)
set @MinvisitID = @MinvisitID + 1
END
Go

-- second record for visit 

Declare @i INT = 1
While (@i <= 1500)
BEGIN 
	INSERT INTO Charge(
		VisitID,
		AdmissionId,
		ServiceId,
		Rate,
		Amount,
		Quantity,
		AddedBy,
		UpdatedBy
		) Values (
		(select Top 1 VisitID from Visit order by NEWID()),
		NULL,
		(select Top 1 serviceID from Service where ServiceTypeID = 1 order by NEWID()),
		0,
		0,
		1,
		1,
		1
		)
	set @i = @i + 1
END
Go

Update Charge
set Charge.Rate = Service.Rate
from charge left join Service On
Charge.ServiceId = Service.serviceID
Go
Update charge set Amount = Rate * Quantity
Go
Update Charge set Concession = (Amount*10)/100 
Go

-- OPD Bill 

INSERT INTO Bill(
	VisitID,
	AdmissionId,
	TotalAmount,
	Concession,
	AddedBy,
	UpdatedBy)
	select VisitID,
	NULL As AdmissionID,
	sum(Amount) As TotalAmount,
	sum(concession) As Concession,
	1 As Addedby,
	1 As Updatedby from Charge group by VisitID order by VisitID

Update Bill set FinalBillAmount = TotalAmount - Concession
Go
Declare @i INT = 1
While (@i <= 1000)
BEGIN
	INSERT INTO Admission(
	PatientCategoryID,
	PatientID,
	UnitID,
	DoctorID,
	AdmissionDate,
	IPDNumber,
	RelativeName,
	RelationID,
	BedID,
	CompanyID,
	IsMLC,
	AddedBy,
	Updatedby
	) Values (
	(Select Top 1 PatientCategoryID from PatientCategory order by NEWID()),
	(select Top 1 PatientID from Patient order by NEWID()),
	(select Top 1 UnitID from Unit order by NEWID()),
	(select Top 1 DoctorID from Doctor order by NEWID()),
	(select GETDATE()-300-(select RAND()*(245-10)+10)),
	@i,
	'R Name-'+Convert(varchar(10),@i),
	(select Top 1 RelationID from Relation order by NEWID()),
	(select Top 1 BedID from Bed Order by NEWID()),
	(select Top 1 CompanyID from InsuranceCompany order by NEWID()),
	0,
	1,
	1
	)

	set @i = @i + 1
END
Go

-- IPD - First Record 

Declare @MinAdmitId INT=(Select min(AdmissionId) from Admission)
Declare @MaxAdmitId INT=(Select Max(AdmissionId) from Admission)
While (@MinAdmitId<=@MaxAdmitId)
BEGIN
        --Print @MinAdmitId
		INSERT INTO Charge
           (VisitId,
            AdmissionId,
            ServiceId,
		    Rate,
		    Amount,
            Quantity,  
		    AddedBy,           
            Updatedby)
		VALUES
           (NULL,
            @MinAdmitId,
            (Select top 1 serviceid from Service where ServiceTypeId in(2,3) order by NEWID()),
		    0,
		    0,
            1,
		    1,
		    1
          )
       Set @MinAdmitId = @MinAdmitId+1
END
Go
 
-- IPD -Second Record Per Admission 

Declare @i INT=1
While (@i<=1000)
BEGIN
     
		INSERT INTO Charge
           (VisitId,
            AdmissionId,
            ServiceId,
		    Rate,
		    Amount,
            Quantity,  
		    AddedBy,           
            Updatedby)
		VALUES
           (NULL,
            (Select top 1 AdmissionId from Admission order by NEWID()),
            (Select top 1 serviceid from Service where ServiceTypeId in(2,3) order by NEWID()),
		    0,
		    0,
            1,
		    1,
		    1
          )
		  
	Set @i=@i+1
 END
 Go

 Update Charge set charge.Rate = Service.Rate
 from Charge
 left join Service on Charge.ServiceId =Service.serviceID
 where VisitID IS NULL
 Go
 Update Charge set Amount = Rate*Quantity where VisitID IS NULL
 Go
 Update Charge set Concession = (Amount*10)/100 where VisitID IS NULL
 Go

 -- Bill 

 INSERT INTO Bill(
		VisitID,
		AdmissionId,
		TotalAmount,
		Concession,
		AddedBy,
		UpdatedBy
		)
 Select NULL AS [VisitId], AdmissionId,Sum(Amount) As TotalAmount,Sum(Concession)As TotalConcession,1 As AddedBy,1 As UpdatedBy from Charge 
 where AdmissionId IS NOT NULL
 Group By AdmissionId
 order by AdmissionId
 Update Bill Set FinalBillAmount=TotalAmount-Concession where VisitId IS NULL
 GO
 -- Discharge

 INSERT INTO Discharge
           (
		    AdmissionId,
            DoctorId,
		    DischargeDate,
		    AddedBy,          
            Updatedby
		   )
Select AdmissionId,DoctorId,AdmissionDate+(SELECT Round(RAND()*(5-10)+10,0)) As DischargeDate,
1 AS AddedBy,1 As UpdatedBy From Admission
GO
-- Application Functionality

Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Masters',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('IPD Billing',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('OPD Billing',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Administartion',0,1,1)
GO
-- Users
Insert Into Users(StaffID,AddedBy,UpdatedBy) Values (1,1,1)
Insert Into Users(StaffID,AddedBy,UpdatedBy) Values (21,1,1)
Insert Into Users(StaffID,AddedBy,UpdatedBy) Values (22,1,1)
GO
-- Admin User
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,1,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,3,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,4,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,5,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,6,1,1)
GO
-- Billing User
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,3,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,3,1,1)
GO
Insert Into Prescription(VisitId,Path,AddedBy,UpdatedBy) Values (2,'\\RecordRoomServer\Patint\1\OPD\2\Prescription_1.jpg',1,1)
-- 2 is Visitid in Path 
GO
Insert Into ClinicalNote(AdmissionId,Path,AddedBy,UpdatedBy) Values (5,'\\RecordRoomServer\Patint\3\IPD\5\Note_5154_1.jpg',1,1)
----5 is AdmissionId in Path 
GO
Drop Table #Temp

select * from INFORMATION_SCHEMA.TABLES