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
