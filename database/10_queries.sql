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

SELECT
    s.name AS specialization,
    COUNT(pay.payment_id) AS paid_payments,
    SUM(pay.amount) AS total_revenue
FROM specializations s
JOIN doctors d
    ON s.specialization_id = d.specialization_id
JOIN appointments a
    ON d.doctor_id = a.doctor_id
JOIN payments pay
    ON a.appointment_id = pay.appointment_id
WHERE pay.status = 'PAID'
GROUP BY s.name
ORDER BY total_revenue DESC;

SELECT
    p.patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    COUNT(a.appointment_id) AS appointment_count
FROM patients p
LEFT JOIN appointments a
    ON p.patient_id = a.patient_id
GROUP BY
    p.patient_id,
    p.first_name,
    p.last_name
ORDER BY appointment_count DESC;

SELECT
    a.appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    a.appointment_date,
    a.notes
FROM appointments a
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
WHERE a.status = 'COMPLETED'
ORDER BY a.appointment_date DESC;

SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    m.name AS medication,
    pr.dosage,
    pr.frequency,
    pr.start_date,
    pr.end_date
FROM prescriptions pr
JOIN patients p
    ON pr.patient_id = p.patient_id
JOIN medications m
    ON pr.medication_id = m.medication_id
ORDER BY p.last_name, pr.start_date;

SELECT
    payment_id,
    appointment_id,
    amount,
    payment_method,
    status
FROM payments
WHERE amount = (
    SELECT MAX(amount)
    FROM payments
);
