SET search_path TO base;

INSERT INTO vehicles (driver_id, effective_start_date, effective_end_date, is_current, make, model, year, plate_number, color, status)
VALUES
    (1,  '2024-12-01 00:00:00', NULL,                    TRUE,  'Toyota',    'Corolla',  2018, 'DUMMY001', 'White',  'active'),
    (2,  '2024-12-04 00:00:00', '2025-09-01 00:00:00',   FALSE, 'MG',        '5',        2016, 'DUMMY002', 'Red',    'inactive'),
    (2,  '2025-09-01 00:00:00', NULL,                    TRUE,  'Hyundai',   'Elantra',  2019, 'DUMMY003', 'Black',  'active'),
    (3,  '2024-12-07 00:00:00', NULL,                    TRUE,  'Kia',       'Cerato',   2020, 'DUMMY004', 'Silver', 'active'),
    (4,  '2024-12-10 00:00:00', NULL,                    TRUE,  'Chevrolet', 'Optra',    2021, 'DUMMY005', 'Grey',   'inactive'),
    (5,  '2024-12-13 00:00:00', '2025-09-15 00:00:00',   FALSE, 'BYD',       'F3',       2017, 'DUMMY006', 'Black',  'inactive'),
    (5,  '2025-09-15 00:00:00', NULL,                    TRUE,  'Nissan',    'Sunny',    2022, 'DUMMY007', 'Red',    'active'),
    (6,  '2024-12-16 00:00:00', NULL,                    TRUE,  'Skoda',     'Octavia',  2023, 'DUMMY008', 'Blue',   'active'),
    (7,  '2024-12-19 00:00:00', NULL,                    TRUE,  'MG',        '5',        2024, 'DUMMY009', 'White',  'maintenance'),
    (8,  '2024-12-22 00:00:00', '2025-09-20 00:00:00',   FALSE, 'Kia',       'Cerato',   2018, 'DUMMY010', 'Red',    'inactive'),
    (8,  '2025-09-20 00:00:00', NULL,                    TRUE,  'Fiat',      'Tipo',     2025, 'DUMMY011', 'Black',  'active'),
    (9,  '2024-12-25 00:00:00', NULL,                    TRUE,  'Renault',   'Logan',    2018, 'DUMMY012', 'Silver', 'active'),
    (10, '2024-12-28 00:00:00', NULL,                    TRUE,  'BYD',       'F3',       2019, 'DUMMY013', 'Grey',   'inactive'),
    (11, '2024-12-31 00:00:00', '2025-10-01 00:00:00',   FALSE, 'Skoda',     'Octavia',  2016, 'DUMMY014', 'Black',  'inactive'),
    (11, '2025-10-01 00:00:00', NULL,                    TRUE,  'Toyota',    'Corolla',  2020, 'DUMMY015', 'Red',    'active'),
    (12, '2025-01-03 00:00:00', NULL,                    TRUE,  'Hyundai',   'Elantra',  2021, 'DUMMY016', 'Blue',   'active'),
    (13, '2025-01-06 00:00:00', NULL,                    TRUE,  'Kia',       'Cerato',   2022, 'DUMMY017', 'White',  'active'),
    (14, '2025-01-09 00:00:00', '2025-10-10 00:00:00',   FALSE, 'Renault',   'Logan',    2017, 'DUMMY018', 'Red',    'inactive'),
    (14, '2025-10-10 00:00:00', NULL,                    TRUE,  'Chevrolet', 'Optra',    2023, 'DUMMY019', 'Black',  'active'),
    (15, '2025-01-12 00:00:00', NULL,                    TRUE,  'Nissan',    'Sunny',    2024, 'DUMMY020', 'Silver', 'active'),
    (16, '2025-01-15 00:00:00', NULL,                    TRUE,  'Skoda',     'Octavia',  2025, 'DUMMY021', 'Grey',   'active'),
    (17, '2025-01-18 00:00:00', NULL,                    TRUE,  'MG',        '5',        2018, 'DUMMY022', 'Red',    'inactive'),
    (18, '2025-01-21 00:00:00', NULL,                    TRUE,  'Fiat',      'Tipo',     2019, 'DUMMY023', 'Blue',   'active'),
    (19, '2025-01-24 00:00:00', NULL,                    TRUE,  'Renault',   'Logan',    2020, 'DUMMY024', 'White',  'active'),
    (20, '2025-01-27 00:00:00', NULL,                    TRUE,  'BYD',       'F3',       2021, 'DUMMY025', 'Black',  'active');
