INSERT INTO Patients (PatientID, FirstName, LastName, DOB, Gender, ContactNumber, Address, Email, EmergencyContact, MedicalHistory) VALUES
(1, 'Ahmed', 'Hassan', '1985-02-15', 'M', '01001234567', 'Cairo, Egypt', 'ahmed.hassan@example.com', '01007654321', 'None'),
(2, 'Fatma', 'Ali', '1990-05-25', 'F', '01002345678', 'Giza, Egypt', 'fatma.ali@example.com', '01006543210', 'Diabetes'),
(3, 'Mohamed', 'Ibrahim', '1982-12-30', 'M', '01003456789', 'Alexandria, Egypt', 'mohamed.ibrahim@example.com', '01005432109', 'Hypertension'),
(4, 'Sara', 'Mahmoud', '1995-07-12', 'F', '01004567890', 'Luxor, Egypt', 'sara.mahmoud@example.com', '01004321098', 'Asthma'),
(5, 'Omar', 'Youssef', '1988-03-22', 'M', '01005678901', 'Aswan, Egypt', 'omar.youssef@example.com', '01003210987', 'None'),
(6, 'Noura', 'Saeed', '1992-11-05', 'F', '01006789012', 'Fayoum, Egypt', 'noura.saeed@example.com', '01002109876', 'Anemia'),
(7, 'Khaled', 'Morsi', '1986-04-18', 'M', '01007890123', 'Ismailia, Egypt', 'khaled.morsi@example.com', '01001098765', 'Allergies'),
(8, 'Mona', 'El-Shenawy', '1991-09-30', 'F', '01008901234', 'Mansoura, Egypt', 'mona.elshenawy@example.com', '01000987654', 'None'),
(9, 'Yasser', 'Amin', '1983-08-14', 'M', '01009012345', 'Suez, Egypt', 'yasser.amin@example.com', '01009876543', 'Hypertension'),
(10, 'Heba', 'Kamal', '1989-01-09', 'F', '01001234567', 'Tanta, Egypt', 'heba.kamal@example.com', '01008765432', 'None');

INSERT INTO Departments (DepartmentID, DepartmentName, HeadOfDepartment) VALUES
(1, 'Cardiology', 'Dr. Youssef Adel'),
(2, 'Neurology', 'Dr. Aya Maher'),
(3, 'Pediatrics', 'Dr. Hassan Gamal'),
(4, 'Orthopedics', 'Dr. Rana Mostafa'),
(5, 'Dermatology', 'Dr. Tamer Naguib'),
(6, 'Ophthalmology', 'Dr. Laila Hany'),
(7, 'Psychiatry', 'Dr. Adham Zaki'),
(8, 'Gastroenterology', 'Dr. Nadine Rashad'),
(9, 'Oncology', 'Dr. Sherif Ehab'),
(10, 'Endocrinology', 'Dr. Marwa Khalil');

INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialization, ContactNumber, Email, HireDate, DepartmentID) VALUES
(1, 'Youssef', 'Adel', 'Cardiology', '01009876543', 'youssef.adel@example.com', '2015-06-15', 1),
(2, 'Aya', 'Maher', 'Neurology', '01008765432', 'aya.maher@example.com', '2016-07-20', 2),
(3, 'Hassan', 'Gamal', 'Pediatrics', '01007654321', 'hassan.gamal@example.com', '2017-08-25', 3),
(4, 'Rana', 'Mostafa', 'Orthopedics', '01006543210', 'rana.mostafa@example.com', '2018-09-30', 4),
(5, 'Tamer', 'Naguib', 'Dermatology', '01005432109', 'tamer.naguib@example.com', '2019-10-05', 5),
(6, 'Laila', 'Hany', 'Ophthalmology', '01004321098', 'laila.hany@example.com', '2020-11-10', 6),
(7, 'Adham', 'Zaki', 'Psychiatry', '01003210987', 'adham.zaki@example.com', '2021-12-15', 7),
(8, 'Nadine', 'Rashad', 'Gastroenterology', '01002109876', 'nadine.rashad@example.com', '2022-01-20', 8),
(9, 'Sherif', 'Ehab', 'Oncology', '01001098765', 'sherif.ehab@example.com', '2022-02-25', 9),
(10, 'Marwa', 'Khalil', 'Endocrinology', '01000987654', 'marwa.khalil@example.com', '2023-03-02', 10);

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime, ReasonForVisit, Status) VALUES
(1, 1, 1, '2024-07-01', '09:00', 'Regular Checkup', 'Completed'),
(2, 2, 2, '2024-07-02', '10:00', 'Headache', 'Completed'),
(3, 3, 3, '2024-07-03', '11:00', 'Fever', 'Completed'),
(4, 4, 4, '2024-07-04', '12:00', 'Back Pain', 'Pending'),
(5, 5, 5, '2024-07-05', '13:00', 'Skin Rash', 'Pending'),
(6, 6, 6, '2024-07-06', '14:00', 'Eye Checkup', 'Pending'),
(7, 7, 7, '2024-07-07', '15:00', 'Anxiety', 'Pending'),
(8, 8, 8, '2024-07-08', '16:00', 'Stomach Pain', 'Pending'),
(9, 9, 9, '2024-07-09', '17:00', 'Cancer Screening', 'Pending'),
(10, 10, 10, '2024-07-10', '18:00', 'Thyroid Checkup', 'Pending');

INSERT INTO Staff (StaffID, FirstName, LastName, Position, DepartmentID, ContactNumber, Email, HireDate) VALUES
(1, 'Amr', 'Fahmy', 'Nurse', 1, '01012345678', 'amr.fahmy@example.com', '2018-01-10'),
(2, 'Salma', 'Lotfy', 'Technician', 2, '01023456789', 'salma.lotfy@example.com', '2019-02-15'),
(3, 'Hesham', 'Kamel', 'Receptionist', 3, '01034567890', 'hesham.kamel@example.com', '2020-03-20'),
(4, 'Nadia', 'Ghanem', 'Administrator', 4, '01045678901', 'nadia.ghanem@example.com', '2021-04-25'),
(5, 'Fady', 'Saad', 'Pharmacist', 5, '01056789012', 'fady.saad@example.com', '2022-05-30'),
(6, 'Maha', 'Mostafa', 'Cleaner', 6, '01067890123', 'maha.mostafa@example.com', '2023-06-05'),
(7, 'Wael', 'Amin', 'Security', 7, '01078901234', 'wael.amin@example.com', '2023-07-10'),
(8, 'Heba', 'Ali', 'Technician', 8, '01089012345', 'heba.ali@example.com', '2023-08-15'),
(9, 'Ayman', 'Galal', 'Receptionist', 9, '01090123456', 'ayman.galal@example.com', '2023-09-20'),
(10, 'Mariam', 'Fouad', 'Nurse', 10, '01001234567', 'mariam.fouad@example.com', '2023-10-25');

INSERT INTO Billing (BillID, PatientID, AppointmentID, Amount, BillDate, PaymentStatus) VALUES
(1, 1, 1, 200, '2024-07-01', 'Paid'),
(2, 2, 2, 150, '2024-07-02', 'Paid'),
(3, 3, 3, 100, '2024-07-03', 'Paid'),
(4, 4, 4, 250, '2024-07-04', 'Unpaid'),
(5, 5, 5, 300, '2024-07-05', 'Unpaid'),
(6, 6, 6, 180, '2024-07-06', 'Unpaid'),
(7, 7, 7, 220, '2024-07-07', 'Unpaid'),
(8, 8, 8, 270, '2024-07-08', 'Unpaid'),
(9, 9, 9, 350, '2024-07-09', 'Unpaid'),
(10, 10, 10, 400, '2024-07-10', 'Unpaid');

INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, VisitDate, Diagnosis, Treatment, Prescription) VALUES
(1, 1, 1, '2024-07-01', 'Healthy', 'Regular Checkup', 'None'),
(2, 2, 2, '2024-07-02', 'Migraine', 'Medication', 'Paracetamol'),
(3, 3, 3, '2024-07-03', 'Flu', 'Rest', 'Vitamin C'),
(4, 4, 4, '2024-07-04', 'Muscle Strain', 'Physiotherapy', 'Pain Relievers'),
(5, 5, 5, '2024-07-05', 'Dermatitis', 'Topical Cream', 'Hydrocortisone'),
(6, 6, 6, '2024-07-06', 'Myopia', 'Glasses', 'None'),
(7, 7, 7, '2024-07-07', 'Anxiety', 'Counseling', 'Anti-anxiety Meds'),
(8, 8, 8, '2024-07-08', 'Gastritis', 'Dietary Changes', 'Antacids'),
(9, 9, 9, '2024-07-09', 'Benign Tumor', 'Observation', 'None'),
(10, 10, 10, '2024-07-10', 'Hypothyroidism', 'Medication', 'Levothyroxine');
