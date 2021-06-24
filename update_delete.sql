--------------------------------------------------------------------
--- FileName: update_delete.sql
--- FileInfo: contains all the update/delete queries.
--------------------------------------------------------------------

--- Aishwarya Select Section Start - asp344
--- update weight of a patient
SELECT * FROM PATIENT WHERE name='Deepika' AND patientId='p1';
UPDATE Patient SET weight=65 WHERE name='Deepika' AND patientId='p1';
SELECT * FROM PATIENT WHERE name='Deepika' AND patientId='p1';
--- Aishwarya Select Section End - asp344

--- Himanshu Select Section Start - hg387
--- update claimStatus 
SELECT * FROM Claims WHERE claimId = 'c1' AND patNo = 'p1' AND visitNo = 'v1' AND branchNo = 'b5' AND claimAmount = 800;  
UPDATE Claims SET claimStatus='OPEN' WHERE claimId = 'c1' AND patNo = 'p1' AND visitNo = 'v1' AND branchNo = 'b5' AND claimAmount = 800; 
SELECT * FROM Claims WHERE claimId = 'c1' AND patNo = 'p1' AND visitNo = 'v1' AND branchNo = 'b5' AND claimAmount = 800;  
--- Himanshu Select Section End - hg387

--- Sravya Select Section Start - sa3648
--- update supervisor 
SELECT * FROM Supervises;
UPDATE Supervises SET nurseSuperVisesId = 'e10' WHERE nurseSuperVisesId = 'e6' AND patientSupervisedId = 'p1'; 
SELECT * FROM Supervises;
--- Sravya Select Section End - sa3648

--- Devi Supraja Select Section Start - dr986
--- update assisted nurses
SELECT * FROM assistedBy ;
UPDATE assistedBy SET doctorAssistedId = 'e2' WHERE doctorAssistedId = 'e1' AND nurseAssistedId = 'e6';
SELECT * FROM assistedBy;
--- Devi Supraja Select Section End - dr986

--- Aishwarya Select Section Start - asp344
--- delete patient phone number
SELECT * FROM Patient_Phone_Number;
DELETE FROM Patient_Phone_Number WHERE patientPhoneId = 'p1' AND phoneNumber = '(990) 907-1865';
SELECT * FROM Patient_Phone_Number;
--- Aishwarya Select Section Start - asp344

--- Himanshu DML Section Start - hg387
--- delelte patient's medicine in use 
SELECT * FROM Patient_Med_In_Use;
DELETE FROM Patient_Med_In_Use WHERE patientMedId = 'p1' AND medicine = 'Acetaminophen';
SELECT * FROM Patient_Med_In_Use;
--- Himanshu DML Section End - hg387

--- Sravya DML Section Start - sa3648
--- delete allergy of a patient
SELECT * FROM Allergies_Patient;
DELETE FROM Allergies_Patient WHERE allergyPatId = 'a1' AND patientAllergyId = 'p1';
SELECT * FROM Allergies_Patient;
--- Sravya DML Section End - sa3648

--- Devi Supraja DML Section Start - dr986
--- delete assisted nurse
SELECT * FROM assistedBy;
DELETE FROM assistedBy WHERE doctorAssistedId = 'e2' AND nurseAssistedId = 'e7';
SELECT * FROM assistedBy;
--- Devi Supraja DML Section End - dr986