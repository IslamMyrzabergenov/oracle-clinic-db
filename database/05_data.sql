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
