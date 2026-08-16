
# Структура базы данных

## SPECIALIZATIONS

Хранит специализации врачей.

Основные поля:

- `specialization_id` — идентификатор специализации
- `name` — название специализации

## DOCTORS

Хранит информацию о врачах.

Основные поля:

- `doctor_id` — идентификатор врача
- `first_name` — имя
- `last_name` — фамилия
- `specialization_id` — специализация врача

## PATIENTS

Хранит информацию о пациентах.

Основные поля:

- `patient_id` — идентификатор пациента
- `first_name` — имя
- `last_name` — фамилия
- `birth_date` — дата рождения
- `phone` — номер телефона
- `email` — электронная почта

## APPOINTMENTS

Хранит записи пациентов на приём.

Основные поля:

- `appointment_id` — идентификатор приёма
- `patient_id` — пациент
- `doctor_id` — врач
- `appointment_date` — дата и время приёма
- `status` — статус приёма
- `notes` — примечание

## MEDICAL_RECORDS

Хранит медицинские записи.

Основные поля:

- `record_id` — идентификатор записи
- `patient_id` — пациент
- `doctor_id` — врач
- `diagnosis` — диагноз
- `treatment` — лечение
- `record_date` — дата записи

## MEDICATIONS

Хранит информацию о лекарствах.

Основные поля:

- `medication_id` — идентификатор лекарства
- `name` — название
- `description` — описание
- `price` — цена

## PRESCRIPTIONS

Хранит назначения лекарств.

Основные поля:

- `prescription_id` — идентификатор назначения
- `patient_id` — пациент
- `doctor_id` — врач
- `medication_id` — лекарство
- `dosage` — дозировка
- `frequency` — частота приёма
- `start_date` — начало лечения
- `end_date` — окончание лечения

## PAYMENTS

Хранит информацию об оплате приёмов.

Основные поля:

- `payment_id` — идентификатор платежа
- `appointment_id` — приём
- `amount` — сумма
- `payment_method` — способ оплаты
- `status` — статус платежа
