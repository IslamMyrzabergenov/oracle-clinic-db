CREATE OR REPLACE PROCEDURE add_patient (
    p_first_name  IN VARCHAR2,
    p_last_name   IN VARCHAR2,
    p_birth_date  IN DATE,
    p_phone       IN VARCHAR2,
    p_email       IN VARCHAR2
)
AS
BEGIN
    INSERT INTO patients (
        first_name,
        last_name,
        birth_date,
        phone,
        email
    )
    VALUES (
        p_first_name,
        p_last_name,
        p_birth_date,
        p_phone,
        p_email
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE create_appointment (
    p_patient_id       IN NUMBER,
    p_doctor_id        IN NUMBER,
    p_appointment_date IN TIMESTAMP,
    p_status            IN VARCHAR2 DEFAULT 'SCHEDULED',
    p_notes             IN VARCHAR2 DEFAULT NULL
)
AS
BEGIN
    INSERT INTO appointments (
        patient_id,
        doctor_id,
        appointment_date,
        status,
        notes
    )
    VALUES (
        p_patient_id,
        p_doctor_id,
        p_appointment_date,
        p_status,
        p_notes
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE cancel_appointment (
    p_appointment_id IN NUMBER
)
AS
    v_status appointments.status%TYPE;
BEGIN
    SELECT status
    INTO v_status
    FROM appointments
    WHERE appointment_id = p_appointment_id;

    IF v_status = 'COMPLETED' THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Completed appointment cannot be cancelled'
        );
    END IF;

    UPDATE appointments
    SET status = 'CANCELLED'
    WHERE appointment_id = p_appointment_id;

    COMMIT;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Appointment not found'
        );
END;
/
