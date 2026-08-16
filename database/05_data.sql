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
