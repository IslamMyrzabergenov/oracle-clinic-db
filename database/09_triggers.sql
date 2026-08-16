CREATE OR REPLACE TRIGGER trg_prevent_completed_reopen
BEFORE UPDATE OF status ON appointments
FOR EACH ROW
BEGIN
    IF :OLD.status = 'COMPLETED'
       AND :NEW.status <> 'COMPLETED' THEN

        RAISE_APPLICATION_ERROR(
            -20004,
            'Completed appointment cannot be reopened'
        );

    END IF;
END;
/
