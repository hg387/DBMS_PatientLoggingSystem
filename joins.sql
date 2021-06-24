--------------------------------------------------------------------
--- FileName: joins.sql
--- FileInfo: contains all the joins statements as data queries.
--------------------------------------------------------------------
--- for each branch get the total amount of open claims

--- Himanshu Data Section Start - hg387
SELECT Visits_Happen.branchNum as branchNum, SUM(Claims.claimAmount) as amount 
FROM Visits_Happen, Claims WHERE
Visits_Happen.visitNum = Claims.visitNo AND 
Claims.claimStatus = 'OPEN'
GROUP BY Visits_Happen.branchNum;

--- for each branch get the total amount of closed claims

SELECT Visits_Happen.branchNum as branchNum, SUM(Claims.claimAmount) as amount 
FROM Visits_Happen, Claims WHERE
Visits_Happen.visitNum = Claims.visitNo AND 
Claims.claimStatus = 'CLOSE'
GROUP BY Visits_Happen.branchNum;

--- for each branch list total all the claims with their status and amount

SELECT Visits_Happen.branchNum as branchNum, Claims.claimId, Claims.claimStatus, Claims.claimAmount 
FROM Visits_Happen, Claims WHERE
Visits_Happen.visitNum = Claims.visitNo; 
--- Himanshu Data Section End - hg387

--- Aishwarya Data Section Start - asp344
--- for each patient count number of allergies, he/she suffering from

SELECT Patient.patientId, count(*) as NumOfAllergies
FROM Allergies_Patient, Patient WHERE
Allergies_Patient.patientAllergyId = Patient.patientId
GROUP BY Patient.patientId;

--- for each allergy with their names count number of patients suffering from it 

SELECT Allergies_Patient.allergyPatId, Allergies.allergyName, count(*) as NumOfPatients
FROM Allergies_Patient, Patient, Allergies WHERE
Allergies_Patient.patientAllergyId = Patient.patientId AND
Allergies_Patient.allergyPatId = Allergies.allergyID
GROUP BY Allergies_Patient.allergyPatId, Allergies.allergyName;

--- for each branch list all doctors

SELECT Works_At.brnNo, Doctor.doctorId, Employee.employeeName as DoctorName
FROM Works_At, Doctor, Employee WHERE 
Works_At.empNo = Doctor.doctorId AND
Doctor.doctorId = Employee.employeeId;
--- Aishwarya Data Section End - asp344

--- Sravya Data Section Start - sa3648
--- for each branch list all nurses

SELECT Works_At.brnNo, Nurse.nurseId, Employee.employeeName as NurseName 
FROM Works_At, Nurse, Employee WHERE 
Works_At.empNo = Nurse.nurseId AND
Nurse.nurseId = Employee.employeeId;

--- for each patient list diagonsed with

SELECT Patient.patientId, Patient.name, Diagnosis.conditionName 
FROM Patient, Diagnosis WHERE
Patient.patientId = Diagnosis.patientNumber;

--- for each visit list if result in some diagonsis

SELECT Visits.visitId, Diagnosis.diagnosisId, Diagnosis.conditionName 
FROM Visits
LEFT JOIN Diagnosis
ON Visits.visitId = Diagnosis.visitNumber;
--- Sravya Data Section End - sa3648

--- Devi Supraja Data Section Start - dr986
--- for each visit list if result in some claim

SELECT Visits.visitId, Claims.claimId, Claims.claimStatus 
FROM Visits
LEFT JOIN Claims
ON Claims.visitNo = Visits.VisitID;


--- for each branch list all the employees

SELECT Works_At.brnNo, Employee.employeeId, Employee.employeeName as EmployeeName 
FROM Works_At, Employee WHERE 
Works_At.empNo = Employee.employeeId;


--- for each branch get count of patients

SELECT Visits_Happen.branchNum, count(*) as NumOfPatients 
FROM Visits_Happen, Made_Visits WHERE
Visits_Happen.visitNum = Made_Visits.vstNumber
GROUP BY Visits_Happen.branchNum;
--- Devi Supraja Data Section End - dr986