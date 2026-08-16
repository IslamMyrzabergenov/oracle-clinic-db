SELECT
    a.appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    s.name AS specialization,
    a.appointment_date,
    a.status
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
JOIN specializations s
    ON d.specialization_id = s.specialization_id
ORDER BY a.appointment_date;

SELECT
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    s.name AS specialization,
    COUNT(a.appointment_id) AS appointment_count
FROM doctors d
JOIN specializations s
    ON d.specialization_id = s.specialization_id
LEFT JOIN appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name,
    s.name
ORDER BY appointment_count DESC;

SELECT
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    COUNT(a.appointment_id) AS appointment_count
FROM doctors d
JOIN appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name
HAVING COUNT(a.appointment_id) > 1
ORDER BY appointment_count DESC;

SELECT
    patient_id,
    first_name || ' ' || last_name AS patient_name,
    birth_date,
    TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date) / 12) AS age,
    CASE
        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date) / 12) < 18
            THEN 'Young'
        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date) / 12) < 60
            THEN 'Adult'
        ELSE 'Senior'
    END AS age_category
FROM patients
ORDER BY age DESC;

SELECT
    p.patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    p.email
FROM patients p
WHERE p.patient_id IN (
    SELECT mr.patient_id
    FROM medical_records mr
)
ORDER BY p.last_name;

SELECT
    payment_method,
    COUNT(payment_id) AS payment_count,
    SUM(amount) AS total_revenue,
    AVG(amount) AS average_payment
FROM payments
WHERE status = 'PAID'
GROUP BY payment_method
ORDER BY total_revenue DESC;
