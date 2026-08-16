CREATE OR REPLACE FUNCTION get_total_revenue
RETURN NUMBER
AS
    v_total NUMBER;
BEGIN
    SELECT NVL(SUM(amount), 0)
    INTO v_total
    FROM payments
    WHERE status = 'PAID';

    RETURN v_total;
END;
/

CREATE OR REPLACE FUNCTION get_patient_age (
    p_patient_id IN NUMBER
)
RETURN NUMBER
AS
    v_birth_date patients.birth_date%TYPE;
    v_age NUMBER;
BEGIN
    SELECT birth_date
    INTO v_birth_date
    FROM patients
    WHERE patient_id = p_patient_id;

    v_age := TRUNC(
        MONTHS_BETWEEN(SYSDATE, v_birth_date) / 12
    );

    RETURN v_age;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Patient not found'
        );
END;
/
