use master
go
CREATE DATABASE Hospital_Base          
go 
use Hospital_Base 
go
SET ANSI_NULLS ON
go
CREATE TABLE dbo.AccessRights(
AccessRightID bigint IDENTITY(1,1) NOT NULL,
UserID bigint NOT NULL,
FunctionalID bigint NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,

PRIMARY KEY CLUSTERED (AccessRightID ASC)
)
GO
-- execute sp_helpindex Table name   --  it is used to check the indexs of the specified table

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Admission(
AdmissionID bigint IDENTITY(1,1) NOT NULL,
PatientCategoryID int NOT NULL,
PatientID bigint NOT NULL,
UnitID int NOT NULL,
DoctorID bigint NOT NULL,
AdmissionDate datetime NOT NULL,
IPDNumber bigint NOT NULL,
RelativeName nvarchar(200) NULL,
RelationID int NULL,
BedID int NOT NULL,
CompanyID int NOT NULL,
IsMLC bit NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,

PRIMARY KEY CLUSTERED (AdmissionID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Advance(
AdvancedID bigint IDENTITY (1,1) NOT NULL,
PatientID bigint NOT NULL,
AdvAmount numeric(18,2) NULL,
Used numeric(18,2) NULL,
Refund numeric(18,2) NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (AdvancedID ASC)
)
Go
SET ANSI_NULLS ON
Go
CREATE TABLE dbo.ApplicationFunctionality(
FunctionalityID bigint IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Level int NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (FunctionalityID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Bed(
BedID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) Not NULL,
WardID int NULL,
RoomID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (BedID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Bill(
BillID bigint NOT NULL,
BillDateTime datetime NULL,
VisitID bigint NULL,
AdmissionId bigint NULL,
TotalAmount numeric(18,2) NULL,
AdvanceAmount numeric(18,2) NULL,
Concession numeric(18,2) NULL,
FinalBillAmount numeric(18,2) NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (BillID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Charge(
ChargeID bigint IDENTITY(1,1) NOT NULL,
VisitID bigint NULL,
AdmissionId bigint NULL,
ServiceId bigint NOT NULL,
Rate numeric(18,2) NOT NULL,
Quantity int NOT NULL,
Amount numeric(18,2) NOT NULL,
Concession numeric(18,2) NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (ChargeID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.City(
CityID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
StateID int NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (CityID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Country(
CountryID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
NationalityID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (CountryID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Department(
DepartmentID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
IsClinical bit NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (DepartmentID ASC) 
) 
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Discharge(
DischargeID bigint IDENTITY(1,1) NOT NULL,
AdmissionID bigint NOT NULL,
DoctorID bigint NOT NULL,
DischargeDate datetime NOT NULL,
DischargeNotes nvarchar(2000) NULL,
FileAttachedPath nvarchar(500) NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (DischargeID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Doctor(
DoctorID bigint IDENTITY(1,1) NOT NULL,
DepartmentID int NOT NULL,
FirstName nvarchar(150) NOT NULL,
MiddleName nvarchar(150) NULL,
LastName nvarchar(150) NOT NULL,
Qualification nvarchar(150) NULL,
GenderID int NULL,
DateOfBirth date NULL,
ContactNo1 nvarchar(15) NULL,
ContactNo2 nvarchar(15) NULL,
Email nvarchar(100) NULL,
AddressLine1 nvarchar(150) NULL,
AddressLine2 nvarchar(150) NULL,
Pincode nvarchar(10) NULL,
CityID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (DoctorID ASC) 
) 
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Gender(
GenderID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (GenderID ASC) 
) 
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.InsuranceCompany(
CompanyID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (CompanyID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Nationality(
NationalityID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (NationalityID ASC)
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Patient(
PatientID bigint IDENTITY(1,1) NOT NULL,
FirstName nvarchar(150) NOT NULL,
MiddleName nvarchar(150) NULL,
LastName nvarchar(150) NOT NULL,
GenderID int NOT NULL,
DateOfBirth date NULL,
ContactNo1 nvarchar(15) NULL,
ContactNO2 nvarchar(15) NULL,
Email nvarchar(100) NULL,
AddressLine1 nvarchar(150) NULL,
AddressLine2 nvarchar(150) NULL,
Pincode nvarchar(10) NULL,
CityID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (PatientID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.PatientCategory(
PatientCategoryID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (PatientCategoryID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Relation(
RelationID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (RelationID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Room(
RoomID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
WardID int NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (RoomID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Service(
ServiceID bigint NOT NULL,
Name nvarchar(200) NOT NULL,
ServiceCategoryID int NOT NULL,
Rate numeric(18,2) NOT NULL,
ServiceTypeID int NOT NULL,
CompanyID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (ServiceID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.ServiceCategory(
ServiceCategoryID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (ServiceCategoryID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.ServiceType(
ServiceTypeID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (ServiceTypeID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.staff(
StaffID bigint IDENTITY(1,1) NOT NULL,
DepartmentID int NOT NULL,
FirstName nvarchar(150) NOT NULL,
MiddleName nvarchar(150) NULL,
LastName nvarchar(150) NOT NULL,
GenderID int NOT NULL,
DateOfBirth date NULL,
ContactNo1 nvarchar(15) NULL,
ContactNO2 nvarchar(15) NULL,
Email nvarchar(100) NULL,
AddressLine1 nvarchar(150) NULL,
AddressLine2 nvarchar(150) NULL,
Pincode nvarchar(10) NULL,
CityID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (StaffID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.State(
StateID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
CountryID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (StateID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Unit(
UnitID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (UnitID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Users(
UserID bigint IDENTITY(1,1) NOT NULL,
StaffID bigint NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (UserID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Visit(
VisitID bigint IDENTITY(1,1) NOT NULL,
PatientCategoryID int NOT NULL,
PatientID bigint NOT NULL,
DoctorID bigint NOT NULL,
UnitID int NOT NULL,
VisitDate datetime NOT NULL,
OPDNumber bigint NOT NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (VisitID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Ward(
WardID int IDENTITY(1,1) NOT NULL,
Name nvarchar(50) NOT NULL,
UnitID int NULL,
Status bit NULL,
AddedBy int NULL,
AddedDateTime datetime NULL,
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL,
PRIMARY KEY CLUSTERED (WardID ASC) 
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE dbo.Prescription(
PrescriptionID bigint IDENTITY(1,1) NOT NULL PRIMARY KEY,
VisitID bigint NOT NULL FOREIGN KEY REFERENCES dbo.Visit,
Path varchar(500),
Status bit NULL DEFAULT(1),
AddedBy int NULL,
AddedDateTime datetime NULL DEFAULT(getdate()),
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL DEFAULT(getdate()),
)
Go

SET ANSI_NULLS ON
Go
CREATE TABLE CLINICALNOTE(
ClinicalNoteId bigint IDENTITY(1,1) NOT NULL PRIMARY KEY,
AdmissionId bigint NOT NULL,
Path Varchar(500),
Status bit NULL DEFAULT (1),
AddedBy int NULL,
AddedDateTime datetime NULL DEFAULT (getdate()),
UpdatedBy bigint NULL,
UpdatedDateTime datetime NULL DEFAULT (getdate())
)
Go

ALTER TABLE Clinicalnote ADD CONSTRAINT FK_Admission FOREIGN KEY(AdmissionId) REFERENCES Admission(AdmissionID)
Go
ALTER TABLE AccessRights ADD DEFAULT(1) FOR Status
Go
ALTER TABLE AccessRights ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE AccessRights ADD DEFAULT(getdate()) FOR UPdatedDateTime
Go

/* ALTER TABLE AccessRights ADD DEFAULT(NULL) FOR AddedBy
Go
ALTER TABLE AccessRights ADD DEFAULT(NULL) FOR UpdatedBy
Go */

-- NEXT Table Admission

ALTER TABLE Admission ADD CONSTRAINT DF_Admission DEFAULT (getdate()) FOR AdmissionDate
Go
ALTER TABLE Admission ADD CONSTRAINT DF_Admission_Added DEFAULT(1) FOR Status
Go
ALTER TABLE Admission ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Admission ADD DEFAULT(getdate()) FOR UpdatedDatetime
Go

-- NEXT Table Advance

ALTER TABLE Advance ADD DEFAULT(1) FOR STATUS
Go
ALTER TABLE Advance ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Advance ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Application Functionality

ALTER TABLE ApplicationFunctionality ADD DEFAULT(1) FOR status
Go
ALTER TABLE ApplicationFunctionality ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE ApplicationFunctionality ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Bed 

ALTER TABLE Bed ADD DEFAULT(1) FOR Status
Go
ALTER TABLE Bed ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Bed ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go
-- NEXT Bill

ALTER TABLE Bill ADD DEFAULT(getdate()) FOR BillDateTime
Go
ALTER TABLE Bill ADD DEFAULT(1) FOR status
Go
ALTER TABLE Bill ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Bill ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Charge

ALTER TABLE Charge ADD DEFAULT(1) FOR status
Go
ALTER TABLE Charge ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Charge ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT City

ALTER TABLE City ADD DEFAULT(1) FOR status
Go
ALTER TABLE city ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE city ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Country

ALTER TABLE Country ADD DEFAULT(1) FOR status
Go
ALTER TABLE Country ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Country ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Department

ALTER TABLE Department ADD DEFAULT(1) FOR status
Go
ALTER TABLE Department ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Department ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Discharge

ALTER TABLE Discharge ADD DEFAULT(1) FOR status
Go
ALTER TABLE Discharge ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Discharge ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Doctor

ALTER TABLE Doctor ADD DEFAULT(1) FOR status
Go
ALTER TABLE Doctor ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Doctor ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Gender

ALTER TABLE Gender ADD DEFAULT(1) FOR status
Go
ALTER TABLE Gender ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Gender ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT InsuranceCompany


ALTER TABLE InsuranceCompany ADD DEFAULT(1) FOR status
Go
ALTER TABLE InsuranceCompany ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE InsuranceCompany ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Nationality

ALTER TABLE Nationality ADD DEFAULT(1) FOR status
Go
ALTER TABLE Nationality ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Nationality ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Patient

ALTER TABLE Patient ADD DEFAULT(1) FOR status
Go
ALTER TABLE Patient ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Patient ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Patient category

ALTER TABLE Patientcategory ADD DEFAULT(1) FOR status
Go
ALTER TABLE Patientcategory ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Patientcategory ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Relation

ALTER TABLE Relation ADD DEFAULT(1) FOR status
Go
ALTER TABLE Relation ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Relation ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Room

ALTER TABLE Room ADD DEFAULT(1) FOR status
Go
ALTER TABLE Room ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Room ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Service

ALTER TABLE Service ADD DEFAULT(1) FOR status
Go
ALTER TABLE Service ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Service ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT ServiceCategory

ALTER TABLE servicecategory ADD DEFAULT(1) FOR status
Go
ALTER TABLE servicecategory ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE servicecategory ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT ServiceType

ALTER TABLE ServiceType ADD DEFAULT(1) FOR status
Go
ALTER TABLE ServiceType ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE serviceType ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Staff

ALTER TABLE Staff ADD DEFAULT(1) FOR status
Go
ALTER TABLE Staff ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Staff ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT state

ALTER TABLE state ADD DEFAULT(1) FOR status
Go
ALTER TABLE state ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE state ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Unit

ALTER TABLE Unit ADD DEFAULT(1) FOR status
Go
ALTER TABLE Unit ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Unit ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT User

ALTER TABLE Users ADD DEFAULT(1) FOR status
Go
ALTER TABLE Users ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Users ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Visit

ALTER TABLE Visit ADD DEFAULT(1) FOR status
Go
ALTER TABLE Visit ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Visit ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Ward

ALTER TABLE Ward ADD DEFAULT(1) FOR status
Go
ALTER TABLE Ward ADD DEFAULT(getdate()) FOR AddedDateTime
Go
ALTER TABLE Ward ADD DEFAULT(getdate()) FOR UpdatedDateTime
Go

-- NEXT Access Rights
 
ALTER TABLE AccessRights WITH CHECK ADD CONSTRAINT FK_AccessRights_Application
FOREIGN KEY(FunctionalityID) REFERENCES ApplicationFunctionality(FunctionalityID)
Go

ALTER TABLE AccessRights CHECK CONSTRAINT FK_AccessRights_Application
Go

ALTER TABLE AccessRights WITH CHECK ADD CONSTRAINT Fk_AccessRights_User 
FOREIGN KEY(UserID) REFERENCES Users(UserID) 
Go

ALTER TABLE AccessRights CHECK CONSTRAINT Fk_AccessRights_User
Go

-- NEXT Admission

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Bediid 
FOREIGN KEY(BedID) REFERENCES Bed(BedID)
Go

ALTER TABLE Admission CHECK CONSTRAINT Fk_Bediid
Go

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Doctor_id
FOREIGN KEY(DoctorID) REFERENCES Doctor(DoctorID)
Go

ALTER TABLE Admission CHECk CONSTRAINT Fk_Doctor_id
Go

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Unit_id
FOREIGN KEY(UnitID) REFERENCES Unit(unitID)
Go

ALTER TABLE Admission CHECK CONSTRAINT Fk_unit_id 
Go

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Patient_ID
FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)
Go

ALTER TABLE Admission CHECK CONSTRAINT Fk_Patient_ID 
Go

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Patient_cat_ID
FOREIGN KEY(PatientcategoryID) REFERENCES Patientcategory(PatientcategoryID)
Go

ALTER TABLE Admission CHECK CONSTRAINT Fk_Patient_cat_ID
Go

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Relation_ID
FOREIGN KEY(RelationID) REFERENCES Relation(RelationID)
Go

ALTER TABLE Admission CHECK CONSTRAINT Fk_Relation_ID
Go

ALTER TABLE Admission WITH CHECK ADD CONSTRAINT Fk_Company_ID
FOREIGN KEY(CompanyID) REFERENCES Insurancecompany(CompanyID)
Go

ALTER TABLE Admission CHECK CONSTRAINT Fk_Company_ID
Go

-- NEXT Advance

ALTER TABLE Advance WITH CHECK ADD CONSTRAINT Fk_Advance_Patient
FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)
Go

ALTER TABLE Advance CHECK CONSTRAINT Fk_Advance_Patient
Go

-- NEXT Bed

ALTER TABLE Bed WITH CHECK ADD CONSTRAINT Fk_BedID_Room
FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
Go

ALTER TABLE Bed CHECK CONSTRAINT Fk_BedID_Room
Go

ALTER TABLE Bill WITH CHECK ADD CONSTRAINT Fk_Bill_Admission
FOREIGN KEY(AdmissionID) REFERENCES Admission(AdmissionID)
Go

ALTER TABLE Bill CHECK CONSTRAINT Fk_Bill_Admission
Go

-- NEXT Charge 

ALTER TABLE Charge WITH CHECK ADD CONSTRAINT Fk_Charge_Visit
FOREIGN KEY(VisitID) REFERENCES Visit(VisitID)
Go

ALTER TABLE Charge CHECK CONSTRAINT Fk_Charge_Visit
Go

ALTER TABLE Charge WITH CHECK ADD CONSTRAINT Fk_Admission_ID
FOREIGN KEY(AdmissionID) REFERENCES Admission(AdmissionID)
Go

ALTER TABLE Charge CHECK CONSTRAINT Fk_Admission_ID
Go

ALTER TABLE Charge WITH CHECK ADD CONSTRAINT Fk_Service_ID
FOREIGN KEY(ServiceID) REFERENCES Service(ServiceID)
Go

ALTER TABLE Charge CHECK CONSTRAINT Fk_Service_ID
Go

-- NEXT City

ALTER TABLE City WITH CHECK ADD CONSTRAINT Fk_State_ID
FOREIGN KEY (stateID) REFERENCES State(StateID)
Go

ALTER TABLE City CHECK CONSTRAINT Fk_State_ID
Go

-- NEXT Country

ALTER TABLE Country WITH CHECK ADD CONSTRAINT Fk_country_ID
FOREIGN KEY (NationalityID) REFERENCES Nationality(NationalityID)
Go

ALTER TABLE Country CHECK CONSTRAINT Fk_country_ID
Go

--NEXT Discharge

ALTER TABLE Discharge WITH CHECK ADD CONSTRAINT Fk_AdmissionDischarge
FOREIGN KEY(AdmissionID) REFERENCES Admission(AdmissionID)
Go

ALTER TABLE Discharge CHECK CONSTRAINT Fk_AdmissionDischarge
Go

ALTER TABLE Discharge WITH CHECK ADD CONSTRAINT Fk_DoctorDischarge
FOREIGN KEY(DoctorID) REFERENCES Doctor(DoctorID)
Go

ALTER TABLE Discharge CHECK CONSTRAINT Fk_DoctorDischarge
Go

-- NEXT Doctor 

ALTER TABLE Doctor WITH CHECK ADD CONSTRAINT Fk_DoctorDepartment
FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
Go

ALTER TABLE Doctor CHECK CONSTRAINT Fk_DoctorDepartment
Go

ALTER TABLE Doctor WITH CHECK ADD CONSTRAINT Fk_GenderDoctor
FOREIGN KEY(GenderID) REFERENCES Gender(GenderID)
Go

ALTER TABLE Doctor CHECK CONSTRAINT Fk_GenderDoctor
Go

ALTER TABLE Doctor WITH CHECK ADD CONSTRAINT Fk_DoctorCity
FOREIGN KEY(CityID) REFERENCES City(CityID)
Go

ALTER TABLE Doctor CHECK CONSTRAINT Fk_DoctorCity

-- NEXT Patient

ALTER TABLE patient WITH CHECK ADD CONSTRAINT Fk_PatientGender
FOREIGN KEY (GenderID) REFERENCES Gender(GenderID)
Go

ALTER TABLE patient CHECK CONSTRAINT Fk_PatientGender
Go

ALTER TABLE patient WITH CHECK ADD CONSTRAINT Fk_patientCity
FOREIGN KEY(CityID) REFERENCES city(cityID)
Go

ALTER TABLE patient CHECK CONSTRAINT Fk_patientCity

-- NEXT Room

ALTER TABLE Room WITH CHECK ADD CONSTRAINT Fk_Roomward
FOREIGN KEY(wardID) REFERENCES ward(wardID)
Go

ALTER TABLE Room CHECK CONSTRAINT Fk_Roomward
Go

-- NEXT Service

ALTER TABLE Service WITH CHECK ADD CONSTRAINT Fk_servicecategory
FOREIGN KEY(ServiceCategoryID) REFERENCES Servicecategory(ServiceCategoryID)
Go

ALTER TABLE service CHECK CONSTRAINT Fk_servicecategory
Go

ALTER TABLE service WITH CHECK ADD CONSTRAINT Fk_servicetype
FOREIGN KEY (ServicetypeID) REFERENCES Servicetype(ServicetypeID)
Go

ALTER TABLE service CHECK CONSTRAINT Fk_servicetype
Go

ALTER TABLE service WITH CHECK ADD CONSTRAINT Fk_servicecompany
FOREIGN KEY (CompanyID) REFERENCES InsuranceCompany(CompanyID)
Go

-- NEXT Staff

ALTER TABLE Staff WITH CHECK ADD CONSTRAINT Fk_staffDepartment
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
Go

ALTER TABLE Staff CHECK CONSTRAINT Fk_staffDepartment
Go

ALTER TABLE Staff WITH CHECK ADD CONSTRAINT Fk_staffgender
FOREIGN KEY (GenderID) REFERENCES Gender(GenderID)
Go

ALTER TABLE Staff CHECK CONSTRAINT Fk_staffgender
Go

ALTER TABLE Staff WITH CHECK ADD CONSTRAINT Fk_staffCity
FOREIGN KEY (CityID) REFERENCES City(CityID)
Go

ALTER TABLE Staff CHECK CONSTRAINT Fk_staffCity
Go

ALTER TABLE state WITH CHECK ADD CONSTRAINT Fk_stateCountry
FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
Go

ALTER TABLE state CHECK CONSTRAINT Fk_stateCountry
Go

ALTER TABLE Users WITH CHECK ADD CONSTRAINT Fk_usersstaff
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
Go

ALTER TABLE Users CHECK CONSTRAINT Fk_usersstaff
Go

-- NEXT Visit

ALTER TABLE Visit WITH CHECK ADD CONSTRAINT Fk_visitpatientcate
FOREIGN KEY (PatientcategoryID) REFERENCES Patientcategory(PatientcategoryID)
Go

ALTER TABLE Visit CHECK CONSTRAINT Fk_visitpatientcate
Go

ALTER TABLE Visit WITH CHECK ADD CONSTRAINT Fk_visitpatientID
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
Go

ALTER TABLE Visit CHECK CONSTRAINT Fk_visitpatientID
Go

ALTER TABLE Visit WITH CHECK ADD CONSTRAINT Fk_visitDoctor
FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
Go

ALTER TABLE Visit CHECK CONSTRAINT Fk_visitDoctor
Go

ALTER TABLE Visit WITH CHECK ADD CONSTRAINT Fk_visitunit
FOREIGN KEY (UnitID) REFERENCES Unit(UnitID)
Go

ALTER TABLE Visit CHECK CONSTRAINT Fk_visitunit
Go

ALTER TABLE Ward WITH CHECK ADD CONSTRAINT Fk_Wardunit
FOREIGN KEY (UnitID) REFERENCES Unit(UnitID)
Go

ALTER TABLE Ward  CHECK CONSTRAINT Fk_Wardunit
Go

CREATE VIEW View_serviceDetails
AS 
SELECT service.Name AS servicename,Rate,companyID,
servicetype.Name AS Servicetype,
servicecategory.Name AS Servicecategory from service INNER JOIN servicetype ON servicetype.servicetypeID = service.servicetypeID
INNER JOIN servicecategory ON servicecategory.servicecategoryID = service.servicecategoryID
Go

CREATE VIEW View_patient
AS
SELECT PatientID,
Firstname,
MiddleName,
Lastname,
Gender.Name as Gender,
Dateofbirth,
ContactNo1,
ContactNo2,
Email,
AddressLine1,
AddressLine2,
Pincode,
City.Name AS City
From patient INNER JOIN Gender ON Gender.GenderID = Patient.GenderID
INNER JOIN City ON City.CityID = Patient.CityID
Go

CREATE VIEW View_Doctor
AS
SELECT DoctorID,
Firstname,
Middlename,
Lastname,
Qualification,
Department.Name AS Department,
Gender.Name As Gender,
DateofBirth,
ContactNo1,
ContactNo2,
Email,
AddressLine1,
AddressLine2,
Pincode,
City.Name As city
FROM Doctor
INNER JOIN Gender ON Gender.GenderID = Doctor.GenderID
INNER JOIN Department ON Department.DepartmentID = Doctor.DepartmentID
INNER JOIN City ON City.CityID = Doctor.CityID
Go

CREATE VIEW View_Staff
AS 
SELECT staffID,
Firstname,
Middlename,
Lastname,
Department.Name AS Department,
Gender.Name As Gender,
DateofBirth,
ContactNo1,
ContactNo2,
Email,
AddressLine1,
AddressLine2,
Pincode,
City.Name As city
FROM staff
INNER JOIN Gender ON Gender.GenderID = staff.GenderID
INNER JOIN Department ON Department.DepartmentID = staff.DepartmentID
INNER JOIN City ON City.CityID = Staff.CityID
Go



