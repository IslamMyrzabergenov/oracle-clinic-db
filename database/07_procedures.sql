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
