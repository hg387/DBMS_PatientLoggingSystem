----------------------------------------------------------------------------
--- FileName: insert.sql
--- FileInfo: contains all the insert queries for data insertion in the table.
----------------------------------------------------------------------------

--- Aishwarya Insert Section Start - asp344
-- Patient
INSERT INTO Patient(patientId, name, gender, birthDate, height, weight, bloodGroup,addressStreet, addressCity, addressState, zip, emerContactName, emerContactNum) VALUES ('p1', 'Deepika', 'F', TO_DATE('18-AUG-04', 'dd-MM-yy'), 162, 60,  'O-',  '3 Shipley Ave. ', 'West Springfield', 'MA', 49509, 'Ria', '4567890456');
INSERT INTO Patient(patientId, name, gender, birthDate, height, weight, bloodGroup,addressStreet, addressCity, addressState, zip, emerContactName, emerContactNum) VALUES ('p2', 'Atharva', 'M', TO_DATE('18-MAY-01', 'dd-MM-yy'), 182, 70,  'B+',  '879 Lawrence St. ', 'Delevan', 'NY', 40050, 'Aarya', '1234567899');
INSERT INTO Patient(patientId, name, gender, birthDate, height, weight, bloodGroup,addressStreet, addressCity, addressState, zip, emerContactName, emerContactNum) VALUES ('p3', 'Aditya', 'M', TO_DATE('08-SEP-99', 'dd-MM-yy'), 172, 65,  'B-',  '1800 Spring garden St', 'Philadelphia', 'PA', 19104, 'Shelby', '0987654321');
INSERT INTO Patient(patientId, name, gender, birthDate, height, weight, bloodGroup,addressStreet, addressCity, addressState, zip, emerContactName, emerContactNum) VALUES ('p4', 'Zenobia', 'F', TO_DATE('04-JAN-94', 'dd-MM-yy'), 122, 45,  'A-',  '3203 Race St', 'Baltimore', 'MD', 19104, 'Irene', '6789054321');
INSERT INTO Patient(patientId, name, gender, birthDate, height, weight, bloodGroup,addressStreet, addressCity, addressState, zip, emerContactName, emerContactNum) VALUES ('p5', 'Shriya', 'F', TO_DATE('18-JUL-97', 'dd-MM-yy'), 155, 57,  'B+',  '16 Shelly Drive', 'Elk Grove', 'NJ', 50456, 'Pam', '1122334455');


-- Employee

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e1','John Doe','M','Doctor','MBBS', 'General', TO_DATE('01-JUN-82', 'dd-MM-yy'), '3047 Highland View Drive', 'Elk Grove', 'NJ', '08901');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e2','Delena Dodson','F','Doctor','MD','Heart', TO_DATE('12-JUL-81', 'dd-MM-yy'), '4855 James Martin Circle', 'Philadelphia', 'PA', '19111');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e3','Robin Borton','M','Doctor','MD','Primary', TO_DATE('29-SEP-80', 'dd-MM-yy'), '877 Bryan Street', 'Delevan', 'NY', '14042');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e4','Reginia Isham','F','Doctor','MBBS','Kidney', TO_DATE('16-AUG-82', 'dd-MM-yy'), '1353 Harron Drive', 'Baltimore', 'MD', '21202');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e5','Billi Yurick','M','Doctor','MD','Dermatology', TO_DATE('23-JUN-79', 'dd-MM-yy'), '2247 Levy Court', 'Cambridge', 'MA', '02141');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e6','Wilbur Nickels','M','Nurse','LPN','General', TO_DATE('04-JAN-85', 'dd-MM-yy'), '2658 Davisson Street', 'Elk Grove', 'NJ', '08901');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e7','Tina Rayner','F','Nurse','BS','Heart', TO_DATE('22-JUL-84', 'dd-MM-yy'), '2598 Parrill Court', 'Philadelphia', 'PA', '19112');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e8','Cecilia Hampshire','F','Nurse','LPN','Primary', TO_DATE('19-MAY-87', 'dd-MM-yy'), '3378 Middleville Road', 'Delevan', 'NY', '14044');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e9','Marlon Whitis','M','Nurse','ADN','Kidney', TO_DATE('21-SEP-82', 'dd-MM-yy'), '825 Vine Street', 'Baltimore', 'MD', '21203');

INSERT INTO Employee (employeeId, employeeName, employeeGender, role, education, domain, employeeBirthDate, addressStreet, addressCity, addressState, zipCode) 
VALUES ('e10','Carry Mirsky','M','Nurse','BS','Dermatology', TO_DATE('27-APR-87', 'dd-MM-yy'), '4436 Burwell Heights Road', 'Cambridge', 'MA', '02144');

-- Doctor

INSERT INTO Doctor (doctorId) 
VALUES ('e1');

INSERT INTO Doctor (doctorId) 
VALUES ('e2');

INSERT INTO Doctor (doctorId) 
VALUES ('e3');

INSERT INTO Doctor (doctorId) 
VALUES ('e4');

INSERT INTO Doctor (doctorId) 
VALUES ('e5');

-- Nurse

INSERT INTO Nurse (nurseId) 
VALUES ('e6');

INSERT INTO Nurse (nurseId) 
VALUES ('e7');

INSERT INTO Nurse (nurseId) 
VALUES ('e8');

INSERT INTO Nurse (nurseId) 
VALUES ('e9');

INSERT INTO Nurse (nurseId) 
VALUES ('e10');


-- Branches

INSERT INTO Branches (branchId, branchName, addressStreet, addressCity, addressState, addressZip, phoneNum, openHours )
VALUES ('b1', 'New Jersey Branch', '4476 Center Street', 'Elk Grove', 'NJ', 08911, '(432) 242-9108', '24 Hours');

INSERT INTO Branches (branchId, branchName, addressStreet, addressCity, addressState, addressZip, phoneNum, openHours ) 
VALUES ('b2', 'Pennsylvania Branch', '1451 Spirit Drive', 'Philadelphia', 'PA', 19122, '(378) 996-0188', '24 Hours');

INSERT INTO Branches (branchId, branchName, addressStreet, addressCity, addressState, addressZip, phoneNum, openHours ) 
VALUES ('b3', 'New York Branch', '988 Pick Street', 'Delevan', 'NY', 14054, '(792) 399-5976', '24 Hours');

INSERT INTO Branches (branchId, branchName, addressStreet, addressCity, addressState, addressZip, phoneNum, openHours ) 
VALUES ('b4', 'Maryland Branch', '43 Woodland Terrace', 'Baltimore', 'MD', 21222, '(206) 558-1560', '24 Hours');

INSERT INTO Branches (branchId, branchName, addressStreet, addressCity, addressState, addressZip, phoneNum, openHours ) 
VALUES ('b5', 'Massachusetts Branch', '2751 Massachusetts Avenue', 'Cambridge', 'MA', 08911, '(970) 778-0874', '24 Hours');


-- visits 
INSERT INTO Visits( visitId, time, admitDate, releaseDate, billingDetails) VALUES('v1', TO_DATE('03.02.2020:10:34:24','DD.MM.YYYY:HH24:MI:SS'), TO_DATE('03.02.2020:11:40:24','DD.MM.YYYY:HH24:MI:SS'),TO_DATE('07.02.2020:10:01:17','DD.MM.YYYY:HH24:MI:SS'), 'Bill Amount - 1000 Dollars(Paid)');
--- Aishwarya Insert Section End - asp344

--- Himanshu Insert Section Start - hg387
INSERT INTO Visits( visitId, time, admitDate, releaseDate, billingDetails) VALUES('v2', TO_DATE('03.03.2020:01:34:10','DD.MM.YYYY:HH24:MI:SS'), TO_DATE('05.03.2020:11:40:01','DD.MM.YYYY:HH24:MI:SS'),TO_DATE('07.03.2020:11:02:10','DD.MM.YYYY:HH24:MI:SS'), 'Bill Amount - 1500 Dollars(Paid)');
INSERT INTO Visits( visitId, time, admitDate, releaseDate, billingDetails) VALUES('v3', TO_DATE('05.04.2020:11:40:01','DD.MM.YYYY:HH24:MI:SS'), TO_DATE('05.04.2020:12:50:01','DD.MM.YYYY:HH24:MI:SS'),TO_DATE('06.04.2020:11:02:10','DD.MM.YYYY:HH24:MI:SS'), 'Bill Amount - 2500 Dollars(Paid)');
INSERT INTO Visits( visitId, time, admitDate, releaseDate, billingDetails) VALUES('v4', TO_DATE('05.05.2020:11:41:01','DD.MM.YYYY:HH24:MI:SS'), TO_DATE('05.05.2020:12:52:30','DD.MM.YYYY:HH24:MI:SS'),TO_DATE('15.05.2020:11:02:10','DD.MM.YYYY:HH24:MI:SS'), 'Bill Amount - 5500 Dollars(Paid)');
INSERT INTO Visits( visitId, time, admitDate, releaseDate, billingDetails) VALUES('v5', TO_DATE('15.09.2020:09:30:10','DD.MM.YYYY:HH24:MI:SS'), TO_DATE('15.09.2020:09:30:10','DD.MM.YYYY:HH24:MI:SS'),TO_DATE('15.09.2020:12:22:15','DD.MM.YYYY:HH24:MI:SS'), 'Bill Amount - 500 Dollars(Paid)');

-- Allergies

INSERT INTO allergies (allergyId, allergyName) 
VALUES ('a1', 'Penicillin');

INSERT INTO allergies (allergyId, allergyName) 
VALUES ('a2', 'Antibiotics');

INSERT INTO allergies (allergyId, allergyName) 
VALUES ('a3', 'NSAIDs');

INSERT INTO allergies (allergyId, allergyName) 
VALUES ('a4', 'Anticonvulsants');

INSERT INTO allergies (allergyId, allergyName) 
VALUES ('a5', 'Chemotherapy drugs');


-- Diagnosis
INSERT INTO Diagnosis(diagnosisId, patientNumber, visitNumber, conditionName) Values ('dg1','p1', 'v1', 'Viral Fever');
INSERT INTO Diagnosis(diagnosisId, patientNumber, visitNumber, conditionName) Values ('dg2','p2', 'v2', 'Stroke');
INSERT INTO Diagnosis(diagnosisId, patientNumber, visitNumber, conditionName) Values ('dg3','p3', 'v3', 'Kidney Stones');
INSERT INTO Diagnosis(diagnosisId, patientNumber, visitNumber, conditionName) Values ('dg4','p4', 'v4', 'COVID');
INSERT INTO Diagnosis(diagnosisId, patientNumber, visitNumber, conditionName) Values ('dg5','p5', 'v5', 'Skin Pigmentation');


-- TestMedicines 
INSERT INTO TestsMedicines(diagnosisNumber, testToBeDone, prescribedMedicines) Values ('dg1','Physical Checkup','Dolo-65');
INSERT INTO TestsMedicines(diagnosisNumber, testToBeDone, prescribedMedicines) Values ('dg2','MRI','tPA');
INSERT INTO TestsMedicines(diagnosisNumber, testToBeDone, prescribedMedicines) Values ('dg3','CT Scan','ibuprofen');
INSERT INTO TestsMedicines(diagnosisNumber, testToBeDone, prescribedMedicines) Values ('dg4','PCR test','Paracetamol');
INSERT INTO TestsMedicines(diagnosisNumber, testToBeDone, prescribedMedicines) Values ('dg5','Biopsy','Clindac Spray');

-- Diagnosed_by

INSERT INTO Diagnosed_by(diagnosisNum, docNum) VALUES('dg1','e1');
INSERT INTO Diagnosed_by(diagnosisNum, docNum) VALUES('dg2','e2');
INSERT INTO Diagnosed_by(diagnosisNum, docNum) VALUES('dg3','e3');
INSERT INTO Diagnosed_by(diagnosisNum, docNum) VALUES('dg4','e4');
INSERT INTO Diagnosed_by(diagnosisNum, docNum) VALUES('dg5','e5');

-- Visits happen
INSERT INTO Visits_Happen(visitNum, branchNum) Values('v1', 'b5');
INSERT INTO Visits_Happen(visitNum, branchNum) Values('v2', 'b3');
INSERT INTO Visits_Happen(visitNum, branchNum) Values('v3', 'b2');
INSERT INTO Visits_Happen(visitNum, branchNum) Values('v4', 'b4');
INSERT INTO Visits_Happen(visitNum, branchNum) Values('v5', 'b1');

-- Made_visits
INSERT INTO Made_Visits(patNumber, vstNumber) Values('p1', 'v1');
INSERT INTO Made_Visits(patNumber, vstNumber) Values('p2', 'v2');
INSERT INTO Made_Visits(patNumber, vstNumber) Values('p3', 'v3');
--- Himanshu Insert Section End - hg387

--- Sravya Insert Section Start - sa3648
INSERT INTO Made_Visits(patNumber, vstNumber) Values('p4', 'v4');
INSERT INTO Made_Visits(patNumber, vstNumber) Values('p5', 'v5');

-- Claims 
INSERT INTO Claims(claimId, patNo, visitNo, branchNo, claimAmount, claimStatus) VALUES ('c1', 'p1', 'v1', 'b5',800, 'CLOSE');

INSERT INTO Claims(claimId, patNo, visitNo, branchNo, claimAmount, claimStatus) VALUES ('c2', 'p2', 'v2', 'b3',1300, 'CLOSE');

INSERT INTO Claims(claimId, patNo, visitNo, branchNo, claimAmount, claimStatus) VALUES ('c3', 'p3', 'v3', 'b2',1800, 'OPEN');

INSERT INTO Claims(claimId, patNo, visitNo, branchNo, claimAmount, claimStatus) VALUES ('c4', 'p4', 'v4', 'b4',4800, 'CLOSE');

INSERT INTO Claims(claimId, patNo, visitNo, branchNo, claimAmount, claimStatus) VALUES ('c5', 'p5', 'v5', 'b1',400, 'OPEN');

-- Works at

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('01-JUN-19', 'dd-MM-yy'), 'e1','b1');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('15-JUL-19', 'dd-MM-yy'), 'e6','b1');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('13-JUN-19', 'dd-MM-yy'), 'e2','b2');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('20-AUG-19', 'dd-MM-yy'), 'e7','b2');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('29-AUG-19', 'dd-MM-yy'), 'e3','b3');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('12-SEP-19', 'dd-MM-yy'), 'e8','b3');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('10-JUN-19', 'dd-MM-yy'), 'e4','b4');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('11-JUL-19', 'dd-MM-yy'), 'e9','b4');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('01-JUN-19', 'dd-MM-yy'), 'e5','b5');

INSERT INTO Works_At (startDate, empNo, brnNo) 
VALUES (TO_DATE('15-JUN-19', 'dd-MM-yy'), 'e10','b5');


-- Treats

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e1', 'p1');

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e2', 'p2');

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e2', 'p3');

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e3', 'p3');

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e4', 'p4');

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e4', 'p5');

INSERT INTO Treats (doctorTreatsId, patientTreatedId) 
VALUES ('e5', 'p5');

-- Supervises

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e6', 'p1');

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e6', 'p2');

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e7', 'p2');

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e7', 'p3');

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e8', 'p3');

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e9', 'p4');

INSERT INTO Supervises (nurseSuperVisesId, patientSupervisedId) 
VALUES ('e10', 'p5');


-- Assisted_by

INSERT INTO assistedBy (doctorAssistedId, nurseAssistedId) 
VALUES ('e1', 'e6');

INSERT INTO assistedBy (doctorAssistedId, nurseAssistedId) 
VALUES ('e2', 'e7');
--- Sravya Insert Section End - sa3648

--- Devi Supraja Insert Section Start - dr986
INSERT INTO assistedBy (doctorAssistedId, nurseAssistedId) 
VALUES ('e3', 'e8');

INSERT INTO assistedBy (doctorAssistedId, nurseAssistedId) 
VALUES ('e4', 'e9');

INSERT INTO assistedBy (doctorAssistedId, nurseAssistedId) 
VALUES ('e5', 'e10');

-- Allergies_Patient

INSERT INTO Allergies_Patient (allergyPatId, patientAllergyId) 
VALUES ('a1', 'p1');

INSERT INTO Allergies_Patient (allergyPatId, patientAllergyId) 
VALUES ('a2', 'p2');

INSERT INTO Allergies_Patient (allergyPatId, patientAllergyId) 
VALUES ('a2', 'p3');

INSERT INTO Allergies_Patient (allergyPatId, patientAllergyId) 
VALUES ('a3', 'p3');

INSERT INTO Allergies_Patient (allergyPatId, patientAllergyId) 
VALUES ('a4', 'p4');


-- Patient_Phone_Number
INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p1', '(990) 907-1865');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p1', '(572) 653-3900');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p2', '(525) 415-1068');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p2', '(357) 207-7417');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p3', '(511) 479-6598');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p3', '(822) 709-8028');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p4', '(273) 755-1095');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p4', '(412) 541-5397');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p5', '(498) 363-2062');

INSERT INTO Patient_Phone_Number (patientPhoneId, phoneNumber) 
VALUES ('p5', '(238) 671-6771');


-- Patient_Med_In_Use

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p1', 'Acetaminophen');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p1', 'Cephalexin');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p2', 'Adderall');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p3', 'Fentanyl');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p3', 'Acetaminophen');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p3', 'Methadone');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p4', 'Omeprazole');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p4', 'Fentanyl');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p5', 'Acetaminophen');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p5', 'Paracetamol');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p5', 'Advil');

INSERT INTO Patient_Med_In_Use (patientMedId, medicine) 
VALUES ('p5', 'Claritin');
--- Devi Supraja Insert Section End - dr986


