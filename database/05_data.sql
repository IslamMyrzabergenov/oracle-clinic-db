INSERT INTO specializations (name)
VALUES ('Cardiologist');

INSERT INTO specializations (name)
VALUES ('Dentist');

INSERT INTO specializations (name)
VALUES ('Neurologist');

INSERT INTO specializations (name)
VALUES ('Therapist');

INSERT INTO specializations (name)
VALUES ('Surgeon');

INSERT INTO doctors (first_name, last_name, specialization_id)
VALUES ('John', 'Smith', 1);

INSERT INTO doctors (first_name, last_name, specialization_id)
VALUES ('Emily', 'Johnson', 2);

INSERT INTO doctors (first_name, last_name, specialization_id)
VALUES ('Michael', 'Brown', 3);

INSERT INTO doctors (first_name, last_name, specialization_id)
VALUES ('Sarah', 'Davis', 4);

INSERT INTO doctors (first_name, last_name, specialization_id)
VALUES ('David', 'Wilson', 5);

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Alex', 'Miller', TO_DATE('1995-03-15', 'YYYY-MM-DD'), '+77010000001', 'alex.miller@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Emma', 'Taylor', TO_DATE('1988-07-22', 'YYYY-MM-DD'), '+77010000002', 'emma.taylor@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Daniel', 'Anderson', TO_DATE('2001-11-08', 'YYYY-MM-DD'), '+77010000003', 'daniel.anderson@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Olivia', 'Thomas', TO_DATE('1992-01-30', 'YYYY-MM-DD'), '+77010000004', 'olivia.thomas@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('James', 'Jackson', TO_DATE('1979-05-17', 'YYYY-MM-DD'), '+77010000005', 'james.jackson@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Sophia', 'White', TO_DATE('1999-09-12', 'YYYY-MM-DD'), '+77010000006', 'sophia.white@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('William', 'Harris', TO_DATE('1985-12-03', 'YYYY-MM-DD'), '+77010000007', 'william.harris@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Isabella', 'Martin', TO_DATE('2003-06-25', 'YYYY-MM-DD'), '+77010000008', 'isabella.martin@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Henry', 'Thompson', TO_DATE('1990-02-14', 'YYYY-MM-DD'), '+77010000009', 'henry.thompson@email.com');

INSERT INTO patients (first_name, last_name, birth_date, phone, email)
VALUES ('Mia', 'Garcia', TO_DATE('1997-10-19', 'YYYY-MM-DD'), '+77010000010', 'mia.garcia@email.com');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (1, 1, TO_TIMESTAMP('2026-08-18 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
     'SCHEDULED', 'Regular consultation');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (2, 2, TO_TIMESTAMP('2026-08-18 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),
     'SCHEDULED', 'Dental examination');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (3, 3, TO_TIMESTAMP('2026-08-18 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
     'COMPLETED', 'Neurological consultation');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (4, 4, TO_TIMESTAMP('2026-08-19 09:30:00', 'YYYY-MM-DD HH24:MI:SS'),
     'SCHEDULED', 'General examination');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (5, 5, TO_TIMESTAMP('2026-08-19 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
     'COMPLETED', 'Surgical consultation');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (6, 1, TO_TIMESTAMP('2026-08-19 14:00:00', 'YYYY-MM-DD HH24:MI:SS'),
     'SCHEDULED', 'Cardiology follow-up');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (7, 4, TO_TIMESTAMP('2026-08-20 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
     'CANCELLED', 'Patient cancelled appointment');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (8, 2, TO_TIMESTAMP('2026-08-20 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
     'SCHEDULED', 'Follow-up dental visit');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (9, 3, TO_TIMESTAMP('2026-08-21 15:00:00', 'YYYY-MM-DD HH24:MI:SS'),
     'COMPLETED', 'Headache evaluation');

INSERT INTO appointments
    (patient_id, doctor_id, appointment_date, status, notes)
VALUES
    (10, 5, TO_TIMESTAMP('2026-08-21 16:30:00', 'YYYY-MM-DD HH24:MI:SS'),
     'SCHEDULED', 'Pre-surgery consultation');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (1, 1, 'Hypertension', 'Blood pressure monitoring and lifestyle changes');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (2, 2, 'Dental caries', 'Dental filling');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (3, 3, 'Migraine', 'Pain management and rest');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (4, 4, 'Seasonal allergy', 'Antihistamine treatment');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (5, 5, 'Appendicitis', 'Surgical treatment');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (6, 1, 'Arrhythmia', 'Cardiac monitoring');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (7, 4, 'Gastritis', 'Dietary changes and medication');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (8, 2, 'Gingivitis', 'Professional dental cleaning');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (9, 3, 'Tension headache', 'Pain management');

INSERT INTO medical_records
    (patient_id, doctor_id, diagnosis, treatment)
VALUES
    (10, 5, 'Hernia', 'Surgical evaluation');

INSERT INTO medications (name, description, price)
VALUES ('Paracetamol', 'Pain reliever and fever reducer', 1500.00);

INSERT INTO medications (name, description, price)
VALUES ('Ibuprofen', 'Pain reliever and anti-inflammatory medicine', 1800.00);

INSERT INTO medications (name, description, price)
VALUES ('Aspirin', 'Medicine used for pain and cardiovascular conditions', 1200.00);

INSERT INTO medications (name, description, price)
VALUES ('Loratadine', 'Antihistamine for allergy symptoms', 2500.00);

INSERT INTO medications (name, description, price)
VALUES ('Omeprazole', 'Medicine used to reduce stomach acid', 2200.00);

INSERT INTO medications (name, description, price)
VALUES ('Amoxicillin', 'Antibiotic medication', 3500.00);

INSERT INTO medications (name, description, price)
VALUES ('Metformin', 'Medicine used to control blood sugar', 2800.00);

INSERT INTO medications (name, description, price)
VALUES ('Atorvastatin', 'Medicine used to lower cholesterol', 4200.00);

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (1, 1, 3, '100 mg', 'Once daily', TO_DATE('2026-08-18', 'YYYY-MM-DD'), TO_DATE('2026-09-18', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (2, 2, 1, '500 mg', 'Twice daily', TO_DATE('2026-08-18', 'YYYY-MM-DD'), TO_DATE('2026-08-25', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (3, 3, 2, '400 mg', 'Three times daily', TO_DATE('2026-08-19', 'YYYY-MM-DD'), TO_DATE('2026-08-26', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (4, 4, 4, '10 mg', 'Once daily', TO_DATE('2026-08-19', 'YYYY-MM-DD'), TO_DATE('2026-09-02', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (5, 5, 6, '500 mg', 'Twice daily', TO_DATE('2026-08-20', 'YYYY-MM-DD'), TO_DATE('2026-08-27', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (6, 1, 3, '100 mg', 'Once daily', TO_DATE('2026-08-20', 'YYYY-MM-DD'), TO_DATE('2026-09-20', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (7, 4, 5, '20 mg', 'Once daily', TO_DATE('2026-08-21', 'YYYY-MM-DD'), TO_DATE('2026-09-04', 'YYYY-MM-DD'));

INSERT INTO prescriptions
    (patient_id, doctor_id, medication_id, dosage, frequency, start_date, end_date)
VALUES
    (8, 2, 1, '500 mg', 'Twice daily', TO_DATE('2026-08-21', 'YYYY-MM-DD'), TO_DATE('2026-08-28', 'YYYY-MM-DD'));

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (1, 15000.00, 'CARD', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (2, 12000.00, 'CASH', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (3, 18000.00, 'TRANSFER', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (4, 10000.00, 'CARD', 'PENDING');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (5, 25000.00, 'TRANSFER', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (6, 20000.00, 'CARD', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (7, 9000.00, 'CASH', 'REFUNDED');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (8, 13000.00, 'CARD', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (9, 17000.00, 'TRANSFER', 'PAID');

INSERT INTO payments
    (appointment_id, amount, payment_method, status)
VALUES
    (10, 22000.00, 'CARD', 'PENDING');
