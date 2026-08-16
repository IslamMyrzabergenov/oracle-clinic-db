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
