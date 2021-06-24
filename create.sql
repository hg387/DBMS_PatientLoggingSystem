----------------------------------------------------------------------------
--- FileName: create.sql
--- FileInfo: contains all the ddl queries for table creation.
----------------------------------------------------------------------------

--- DDL Project Queries

--- Aishwarya Select DDL Start - asp344
--- Patient 

CREATE TABLE Patient(
	patientId VARCHAR(25) CONSTRAINT PATIENT_PK PRIMARY KEY,
  	name VARCHAR(50) CONSTRAINT PATIENT_NAME NOT NULL,
  	gender VARCHAR(1) CONSTRAINT PATIENT_GENDER NOT NULL CONSTRAINT patient_CK_gender CHECK(gender = 'M' OR gender = 'F'),
  	birthDate Date CONSTRAINT PATIENT_DOB NOT NULL,
  	height NUMBER,
  	weight NUMBER,
  	bloodGroup VARCHAR(25) CONSTRAINT PATIENT_BG NOT NULL,
  	addressStreet VARCHAR(50) CONSTRAINT PATIENT_ADDRESS_STREET NOT NULL,
  	addressCity VARCHAR(50) CONSTRAINT PATIENT_ADDRESS_CITY NOT NULL,
  	addressState VARCHAR(2) CONSTRAINT PATIENT_ADDRESS_STATE NOT NULL,
  	zip NUMBER(5) CONSTRAINT PATIENT_ZIPCODE NOT NULL,
  	emerContactName VARCHAR(50) CONSTRAINT EMERGENCY_CONTACT_NAME NOT NULL,
  	emerContactNum VARCHAR(15) CONSTRAINT EMERGENCY_CONTACT_PHONE NOT NULL
);

--- Employee

CREATE TABLE Employee(
	employeeId VARCHAR(25) CONSTRAINT EMPLOYEE_PK PRIMARY KEY,
  	employeeName VARCHAR(25) CONSTRAINT EMPLOYEE_NAME NOT NULL,
  	employeeGender VARCHAR(1) CONSTRAINT EMPLOYEE_GENDER NOT NULL,
  	role varchar(25) CONSTRAINT EMPLOYEE_ROLE NOT NULL,
  	education varchar(100),
  	domain VARCHAR(25) CONSTRAINT domain_C CHECK (domain in ('General','Heart','Primary','Kidney','Dermatology')),
  	employeeBirthDate Date CONSTRAINT EMPLOYEE_DOB NOT NULL,
  	addressStreet VARCHAR(50) CONSTRAINT EMPLOYEE_ADDRESS_STREET NOT NULL,
  	addressCity VARCHAR(50) CONSTRAINT EMPLOYEE_ADDRESS_CITY NOT NULL,
  	addressState VARCHAR(2) CONSTRAINT EMPLOYEE_ADDRESS_STATE NOT NULL,
  	zipCode NUMBER(5) CONSTRAINT EMPLOYEE_ZIP_CODE NOT NULL
);

--- Doctor

CREATE TABLE Doctor(
    doctorId VARCHAR(25) CONSTRAINT DOCTOR_PK PRIMARY KEY CONSTRAINT EMPLOYEE_FK REFERENCES Employee(employeeId)
    ON DELETE CASCADE
);

--- Nurse

CREATE TABLE Nurse(
    nurseId VARCHAR(25) CONSTRAINT NURSE_PK PRIMARY KEY CONSTRAINT NURSE_FK REFERENCES EMPLOYEE(employeeId)
    ON DELETE CASCADE
);

--- Branches

CREATE TABLE Branches(
          	branchId VARCHAR(25) CONSTRAINT BRANCHES_PK PRIMARY KEY,
          	branchName VARCHAR(25) CONSTRAINT BRANCHES_NN_BRANCHNAME NOT NULL,
          	addressStreet VARCHAR(50) CONSTRAINT BRANCHES_NN_STREET NOT NULL,
          	addressCity VARCHAR(50) CONSTRAINT BRANCHES_NN_CITY NOT NULL,
          	addressState VARCHAR(2) CONSTRAINT BRANCHES_NN_STATE NOT NULL,
          	addressZip NUMBER(5) CONSTRAINT BRANCHES_NN_ZIP NOT NULL,
          	phoneNum VARCHAR(15) CONSTRAINT BRANCHES_NN_PHONENUM NOT NULL,
          	openHours VARCHAR(25)
);
--- Aishwarya Select DDL End - asp344

--- Himanshu Select DDL Start - hg387
--- Visits

CREATE TABLE Visits(
          	visitId VARCHAR(25) CONSTRAINT VISITS_PK PRIMARY KEY,
			Time DATE CONSTRAINT VISITS_NN_TIME NOT NULL,
          	admitDate DATE CONSTRAINT VISITS_NN_ADMITDATE NOT NULL,
          	releaseDate DATE,
          	billingDetails VARCHAR(100)
);
 

-- Allergies 

CREATE TABLE Allergies(
	allergyId VARCHAR(25) CONSTRAINT ALLERGY_PK PRIMARY KEY,
  	allergyName VARCHAR(50) CONSTRAINT ALLERGY_NAME NOT NULL
);

--- Diagnosis

CREATE TABLE Diagnosis(
          	diagnosisId VARCHAR(25) CONSTRAINT DIAGNOSIS_PK PRIMARY KEY,
          	patientNumber VARCHAR(25) CONSTRAINT DIAGNOSIS_FK_PATIENTNUMBER REFERENCES PATIENT(patientId)
			  CONSTRAINT DIAGNOSIS_NN_PATIENTID NOT NULL
			  CONSTRAINT DIAGNOSIS_UQ_PATIENTID UNIQUE,
          	visitNumber VARCHAR(25) CONSTRAINT DIAGNOSIS_FK_VISITNUMBER REFERENCES Visits(visitId)
			  CONSTRAINT DIAGNOSIS_NN_VISITNUMBER NOT NULL
			  CONSTRAINT DIAGNOSIS_UQ_VISITNUMBER UNIQUE,
          	conditionName VARCHAR(50) CONSTRAINT DIAGNOSIS_NN_CONDITIONNAME NOT NULL
);

--- TestsMedicines

CREATE TABLE TestsMedicines(
			diagnosisNumber VARCHAR(25) CONSTRAINT TESTSMEDICINES_FK_ID REFERENCES Diagnosis(diagnosisId),
			testToBeDone VARCHAR(50),
          	prescribedMedicines VARCHAR(50),
          	CONSTRAINT PK_TESTSMEDICINES PRIMARY KEY(diagnosisNumber, testToBeDone, prescribedMedicines)
);
 
--- Diagnosed_By
 CREATE TABLE Diagnosed_By(
          	diagnosisNum VARCHAR(25) CONSTRAINT DIAGNOSED_BY_FK_ID REFERENCES Diagnosis(diagnosisId),
          	docNum VARCHAR(25) CONSTRAINT DIAGNOSED_BY_FK_EMPLOYEENUMBER REFERENCES Doctor(doctorId),
          	CONSTRAINT PK_DIAGNOSIS_BY PRIMARY KEY(diagnosisNum, docNum)
);
--- Himanshu Select DDL End - hg387

--- Sravya Select DDL Start - sa3648
--- Visits_Happen

CREATE TABLE Visits_Happen(
			visitNum VARCHAR(25) CONSTRAINT VISITS_HAPPEN_FK_V REFERENCES Visits(visitId),
			branchNum VARCHAR(25) CONSTRAINT VISITS_HAPPEN_FK_B REFERENCES Branches(branchId),
          	CONSTRAINT PK_VISITS_HAPPEN PRIMARY KEY(visitNum, branchNum)
);

--- Made_Visits
 
CREATE TABLE Made_Visits(
			patNumber VARCHAR(25) CONSTRAINT MADE_VISITS_FK_P REFERENCES Patient(patientId),
			vstNumber VARCHAR(25) CONSTRAINT MADE_VISITS_FK_V REFERENCES Visits(visitId),
          	CONSTRAINT PK_MADE_VISITS PRIMARY KEY(patNumber, vstNumber)
);
 
--- Claims

CREATE TABLE Claims(
          	claimId VARCHAR(25),
			patNo VARCHAR(25) CONSTRAINT CLAIMS_FK_PATIENTNUMBER REFERENCES Patient(patientId) ON DELETE CASCADE,
			visitNo VARCHAR(25) CONSTRAINT CLAIMS_FK_VISITNUMBER REFERENCES Visits(visitId) ON DELETE CASCADE,
			branchNo VARCHAR(25) CONSTRAINT CLAIMS_FK_BRANCHNUMBER REFERENCES Branches(branchId) CONSTRAINT CLAIMS_NN_BRANCHNUMBER NOT NULL,
			claimAmount NUMBER CONSTRAINT CLAIMAMOUNT_NN_CLAIMAMOUNT NOT NULL,
          	claimStatus VARCHAR(5) CONSTRAINT CLAIMS_CK_STATUS CHECK(claimStatus = 'OPEN' OR claimStatus = 'CLOSE'),
			CONSTRAINT CLAIMS_PK PRIMARY KEY(claimId, patNo, visitNo)
);

--- Works_At
 
CREATE TABLE Works_At(
          	startDate DATE,
          	empNo VARCHAR(25) CONSTRAINT WORKS_AT_FK_EMP REFERENCES Employee(employeeId),
          	brnNo VARCHAR(25) CONSTRAINT WORKS_AT_FK_B REFERENCES Branches(branchId),
          	CONSTRAINT PK_WORKS_AT PRIMARY KEY(empNo, brnNo)
);

--- Treats

CREATE TABLE Treats(
			doctorTreatsId VARCHAR(25) CONSTRAINT EMP_FK REFERENCES Doctor(doctorId),
    		patientTreatedId VARCHAR(25) CONSTRAINT EMPL_FK REFERENCES Patient(patientId),
    		CONSTRAINT PK_TREATS PRIMARY KEY(doctorTreatsId, patientTreatedId)
);
--- Sravya Select DDL End - sa3648

--- Devi Supraja Select DDL Start - dr986
--- Supervises

CREATE TABLE Supervises(
			nurseSuperVisesId VARCHAR(25) CONSTRAINT NURSESUPER_FK REFERENCES Nurse(nurseId),
    		patientSupervisedId VARCHAR(25) CONSTRAINT PATIENTS_FK REFERENCES Patient(patientId),
  			CONSTRAINT PK_SUPERVISES PRIMARY KEY(nurseSuperVisesId, patientSupervisedId)
);

--- AssistedBy

CREATE TABLE AssistedBy(
			doctorAssistedId VARCHAR(25) CONSTRAINT DOCTORASSIG_FK REFERENCES Doctor(doctorId),
    		nurseAssistedId VARCHAR(25) CONSTRAINT NURSEASSIG_FK REFERENCES Nurse(nurseId),
    		CONSTRAINT PK_ASSISTS PRIMARY KEY(doctorAssistedId, nurseAssistedId)
);

--- Allergies_Patient 

CREATE TABLE Allergies_Patient(
			allergyPatId VARCHAR(25) CONSTRAINT ALLER_FK REFERENCES  Allergies(allergyId),
    		patientAllergyId VARCHAR(25) CONSTRAINT PATIENTALLER_FK REFERENCES Patient(patientId),
    		CONSTRAINT PK_ALLERGIESPATIENT PRIMARY KEY(allergyPatId, patientAllergyId)
);


--- PatientPhoneNumber

CREATE TABLE Patient_Phone_Number(
	patientPhoneId VARCHAR(25) CONSTRAINT PATIENT_ID REFERENCES Patient(patientId),
  	phoneNumber VARCHAR(15),
  	CONSTRAINT PHN_PK PRIMARY KEY(patientPhoneId, phoneNumber)
);


--- Patient_Med_In_Use

CREATE TABLE Patient_Med_In_Use(
	patientMedId VARCHAR(25) CONSTRAINT PATIENT_MEDICINE_FK REFERENCES Patient(patientId),
  	medicine VARCHAR(75),
  	CONSTRAINT MEDICINE_PK PRIMARY KEY(patientMedId, medicine)
);
--- Devi Supraja Select DDL End - dr986








