select * from Visit

select * from Patient

-- Patient visited to Hospital -- 1

select Visit.VisitDate,visit.OPDNumber,
CONCAT(patient.Firstname,' ',Patient.Lastname) AS PatientName,PatientCategory.Name,
CONCAT(Doctor.FirstName,' ',Doctor.LastName) As DoctorName,Unit.Name As UnitName
From Visit
INNER JOIN Patient On Visit.PatientID = Patient.PatientID 
INNER JOIN PatientCategory On Visit.PatientCategoryID = PatientCategory.PatientCategoryID
INNER JOIN Doctor on Visit.DoctorID = Doctor.DoctorID 
INNER JOIN Unit On Unit.UnitID = Visit.UnitID;
 

-- Patients Admitted In Hospital -- 2

Select A.AdmissionDate,Concat(P.FirstName,'',P.lastName) As [Patient Name],
Pc.Name As [patient category],Concat(D.FirstName,'',D.LastName) As [Doctor Name],
Ds.DischargeDate,U.Name As UnitName
From Admission A
INNER JOIN Patient P On P.PatientID = A.PatientID 
INNER JOIN PatientCategory Pc On Pc.PatientCategoryID = A.PatientCategoryID
INNER JOIN Doctor D On D.DoctorID = A.DoctorID
INNER JOIN Discharge Ds On Ds.AdmissionID = A.AdmissionID
INNER JOIN Unit U On U.UnitID = A.UnitID


select Count(Year(AdmissionDate)),Year(AdmissionDate) From Admission where Year(AdmissionDate) = 2022 Group by YEAR(AdmissionDate)

-- Number Of patients visited to Medicine Department In 2022 -- 3

Select Distinct(Name) from Department

Select Count(PatientID) AS [Number OF Patients] From Visit 
INNER JOIN Doctor On Doctor.DoctorID = visit.DoctorID
LEFT JOIN Department On Doctor.DepartmentID = Department.DepartmentID
where Year(visit.VisitDate) = 2022 and Department.Name = 'Medicine'

select count(PatientID) As patientCount,Month(VisitDate) As VisitMonth,YEAR(VisitDate) As visitYear from Visit
Group by Month(VisitDate),year(VisitDate) Having year(VisitDate) = 2022


-- Patients Who visited and Admitted in the Cardiology Department -- 4

Select V.PatientId,A.PatientId from Visit V
INNER JOIN Admission A On V.PatientId=A.PatientId
INNER JOIN Doctor d ON v.DoctorID=D.DoctorID
INNER JOIN Department dp ON d.DepartmentID=dp.DepartmentID
INNER JOIN Doctor d1 ON A.DoctorID=d1.DoctorID
INNER JOIN Department dp1 ON d1.DepartmentID=dp1.DepartmentID
where Year(VisitDate)=2022  AND dp.Name='Cardiology' AND Year(AdmissionDate)=2022 AND dp1.Name='Cardiology'

-- Yearwise & Departmentwise patients visits -- 5

Select Year(VisitDate) As Year_,dp.Name AS Department,Count(PatientId) As PatientCount from Visit V
INNER JOIN Doctor d ON v.DoctorID=D.DoctorID
INNER JOIN Department dp ON d.DepartmentID=dp.DepartmentID
where Year(VisitDate)=2022 Group By Year(VisitDate),dp.Name

-- Patients based on their diagnosis department 

select *,R.Name,De.Name From Admission A Inner JOIN Relation R On R.RelationID = A.RelationID 
Inner Join Doctor on Doctor.DoctorID = A.DoctorID
Inner Join Department De on Doctor.DepartmentID = De.DepartmentID
