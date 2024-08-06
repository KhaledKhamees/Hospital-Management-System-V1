USE master
CREATE DATABASE HospitalManagementSystem
ON (
NAME = HospitalManagementSystem_data ,
FILENAME = 'D:\Edu\Courses\DB\Apps\Hospital Management System.mdf',
SIZE =	10MB ,
MAXSIZE = 100MB,
FILEGROWTH = 10MB 
)
LOG ON (
NAME = HospitalManagementSystem_log, 
FILENAME = 'D:\Edu\Courses\DB\Apps\Hospital Management System.ldf',
SIZE =	10MB ,
MAXSIZE = 100MB,
FILEGROWTH = 10MB 
);

USE HospitalManagementSystem 

CREATE TABLE Patients (
PatientID BIGINT PRIMARY KEY , 
FirstName VARCHAR(20),
LastName VARCHAR(20),
DOB DATE ,
Gender CHAR , 
ContactNumber VARCHAR(14),
Address VARCHAR(100),
Email VARCHAR(50),
EmergencyContact VARCHAR(14),
MedicalHistory VARCHAR(200)
);

CREATE TABLE Doctors (
DoctorID BIGINT PRIMARY KEY , 
FirstName VARCHAR(20),
LastName VARCHAR(20),
Specialization VARCHAR(30),
ContactNumber VARCHAR(14),
Email VARCHAR(50),
DepartmentID BIGINT,
HireDate DATE ,
CONSTRAINT Dr_Dp_FK FOREIGN KEY (DepartmentID)
REFERENCES  Departments (DepartmentID)
);

CREATE TABLE Departments (
DepartmentID BIGINT PRIMARY KEY , 
DepartmentName varchar(30),
HeadOfDepartment varchar(50)
);

CREATE TABLE Appointments (
AppointmentID BIGINT PRIMARY KEY , 
PatientID BIGINT , 
DoctorID BIGINT , 
AppointmentDate DATE , 
AppointmentTime TIME , 
ReasonForVisit VARCHAR(15),
Status VARCHAR(40),
CONSTRAINT PT_App_FK FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
CONSTRAINT Dr_App_FK FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
ALTER TABLE Appointments
ALTER COLUMN ReasonForVisit VARCHAR(50);


CREATE TABLE Staff (
StaffID BIGINT , 
FirstName VARCHAR(20),
LastName VARCHAR(20),
Position VARCHAR(20), 
DepartmentID BIGINT,
ContactNumber VARCHAR(14),
Email VARCHAR(30),
HireDate DATE ,
CONSTRAINT St_Dp_FK FOREIGN KEY (DepartmentID)
REFERENCES Departments (DepartmentID)
);
ALTER TABLE Staff 
ALTER COLUMN StaffID BIGINT NOT NULL ;

ALTER TABLE Staff 
ADD CONSTRAINT ST_PK PRIMARY KEY(StaffID);

CREATE TABLE Billing (
BillID BIGINT PRIMARY KEY , 
PatientID BIGINT , 
AppointmentID BIGINT , 
Amount BIGINT , 
BillDate DATE , 
PaymentStatus VARCHAR (5) CHECK(PaymentStatus IN ('DONE','NOT')),
CONSTRAINT Bi_Pt_FK FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
CONSTRAINT Bi_Ap_FK FOREIGN KEY (AppointmentID) REFERENCES Appointments (AppointmentID)
);
ALTER TABLE Billing 
ALTER COLUMN PaymentStatus VARCHAR(6) 
ALTER TABLE Billing 
ADD CONSTRAINT Ck_payment
CHECK (PaymentStatus IN ('Paid','Unpaid'));

CREATE TABLE MedicalRecords (
RecordID BIGINT PRIMARY KEY , 
PatientID BIGINT , 
DoctorID BIGINT , 
VisitDate DATE , 
Diagnosis VARCHAR(100),
Treatment VARCHAR(100),
Prescription VARCHAR(500),
CONSTRAINT PT_Mr_FK FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
CONSTRAINT Dr_Mr_FK FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
