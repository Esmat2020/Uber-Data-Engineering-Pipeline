-- =====================================================================
-- DUMMY / SYNTHETIC seed data for base.payments
-- Requires base.trips and base.riders to be loaded first (FKs).
-- One payment per completed trip (30 rows); amount mirrors trips.final_fare.
-- =====================================================================
SET search_path TO base;

INSERT INTO payments (trip_id, rider_id, amount, currency, payment_method, payment_status)
VALUES
    (1,  1,  44.28,  'EGP', 'cash',        'paid'),
    (2,  2,  55.94,  'EGP', 'credit_card', 'paid'),
    (3,  3,  68.04,  'EGP', 'debit_card',  'paid'),
    (4,  4,  83.16,  'EGP', 'wallet',      'paid'),
    (5,  5,  93.96,  'EGP', 'cash',        'paid'),
    (6,  6,  108.22, 'EGP', 'credit_card', 'paid'),
    (7,  7,  119.88, 'EGP', 'debit_card',  'paid'),
    (8,  8,  136.30, 'EGP', 'wallet',      'refunded'),
    (9,  9,  147.96, 'EGP', 'cash',        'paid'),
    (10, 10, 158.76, 'EGP', 'credit_card', 'paid'),
    (11, 11, 44.28,  'EGP', 'debit_card',  'paid'),
    (12, 12, 55.94,  'EGP', 'wallet',      'paid'),
    (13, 13, 68.04,  'EGP', 'cash',        'paid'),
    (14, 14, 83.16,  'EGP', 'credit_card', 'paid'),
    (15, 15, 93.96,  'EGP', 'debit_card',  'paid'),
    (26, 26, 108.22, 'EGP', 'credit_card', 'paid'),
    (27, 27, 119.88, 'EGP', 'debit_card',  'paid'),
    (28, 28, 136.30, 'EGP', 'wallet',      'paid'),
    (29, 29, 147.96, 'EGP', 'cash',        'paid'),
    (30, 30, 158.76, 'EGP', 'credit_card', 'paid'),
    (31, 31, 44.28,  'EGP', 'debit_card',  'paid'),
    (32, 32, 55.94,  'EGP', 'wallet',      'paid'),
    (33, 33, 68.04,  'EGP', 'cash',        'failed'),
    (34, 34, 83.16,  'EGP', 'credit_card', 'paid'),
    (35, 35, 93.96,  'EGP', 'debit_card',  'paid'),
    (36, 36, 108.22, 'EGP', 'wallet',      'paid'),
    (37, 37, 119.88, 'EGP', 'cash',        'paid'),
    (38, 38, 136.30, 'EGP', 'credit_card', 'paid'),
    (39, 39, 147.96, 'EGP', 'debit_card',  'paid'),
    (40, 40, 158.76, 'EGP', 'wallet',      'paid');
