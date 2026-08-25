-- =====================================================================
-- DUMMY / SYNTHETIC seed data for base.riders (not real people)
-- No dependencies on other tables — this file can be run first.
-- rider_id is SERIAL, so rows are assigned ids 1..40 in the order below.
-- =====================================================================
SET search_path TO base;

INSERT INTO riders (first_name, last_name, phone, email, created_at, is_banned, banned_reason)
VALUES
    ('Rider01', 'Test01', '0100000001', 'rider01@example.com', '2025-01-01 09:00:00', FALSE, NULL),
    ('Rider02', 'Test02', '0100000002', 'rider02@example.com', '2025-01-03 09:00:00', FALSE, NULL),
    ('Rider03', 'Test03', '0100000003', 'rider03@example.com', '2025-01-05 09:00:00', FALSE, NULL),
    ('Rider04', 'Test04', '0100000004', 'rider04@example.com', '2025-01-07 09:00:00', FALSE, NULL),
    ('Rider05', 'Test05', '0100000005', 'rider05@example.com', '2025-01-09 09:00:00', FALSE, NULL),
    ('Rider06', 'Test06', '0100000006', 'rider06@example.com', '2025-01-11 09:00:00', FALSE, NULL),
    ('Rider07', 'Test07', '0100000007', 'rider07@example.com', '2025-01-13 09:00:00', FALSE, NULL),
    ('Rider08', 'Test08', '0100000008', 'rider08@example.com', '2025-01-15 09:00:00', FALSE, NULL),
    ('Rider09', 'Test09', '0100000009', 'rider09@example.com', '2025-01-17 09:00:00', FALSE, NULL),
    ('Rider10', 'Test10', '0100000010', 'rider10@example.com', '2025-01-19 09:00:00', TRUE, 'Repeated policy violations'),
    ('Rider11', 'Test11', '0100000011', 'rider11@example.com', '2025-01-21 09:00:00', FALSE, NULL),
    ('Rider12', 'Test12', '0100000012', 'rider12@example.com', '2025-01-23 09:00:00', FALSE, NULL),
    ('Rider13', 'Test13', '0100000013', 'rider13@example.com', '2025-01-25 09:00:00', FALSE, NULL),
    ('Rider14', 'Test14', '0100000014', 'rider14@example.com', '2025-01-27 09:00:00', FALSE, NULL),
    ('Rider15', 'Test15', '0100000015', 'rider15@example.com', '2025-01-29 09:00:00', FALSE, NULL),
    ('Rider16', 'Test16', '0100000016', 'rider16@example.com', '2025-01-31 09:00:00', FALSE, NULL),
    ('Rider17', 'Test17', '0100000017', 'rider17@example.com', '2025-02-02 09:00:00', FALSE, NULL),
    ('Rider18', 'Test18', '0100000018', 'rider18@example.com', '2025-02-04 09:00:00', FALSE, NULL),
    ('Rider19', 'Test19', '0100000019', 'rider19@example.com', '2025-02-06 09:00:00', FALSE, NULL),
    ('Rider20', 'Test20', '0100000020', 'rider20@example.com', '2025-02-08 09:00:00', FALSE, NULL),
    ('Rider21', 'Test21', '0100000021', 'rider21@example.com', '2025-02-10 09:00:00', FALSE, NULL),
    ('Rider22', 'Test22', '0100000022', 'rider22@example.com', '2025-02-12 09:00:00', FALSE, NULL),
    ('Rider23', 'Test23', '0100000023', 'rider23@example.com', '2025-02-14 09:00:00', FALSE, NULL),
    ('Rider24', 'Test24', '0100000024', 'rider24@example.com', '2025-02-16 09:00:00', FALSE, NULL),
    ('Rider25', 'Test25', '0100000025', 'rider25@example.com', '2025-02-18 09:00:00', FALSE, NULL),
    ('Rider26', 'Test26', '0100000026', 'rider26@example.com', '2025-02-20 09:00:00', FALSE, NULL),
    ('Rider27', 'Test27', '0100000027', 'rider27@example.com', '2025-02-22 09:00:00', FALSE, NULL),
    ('Rider28', 'Test28', '0100000028', 'rider28@example.com', '2025-02-24 09:00:00', FALSE, NULL),
    ('Rider29', 'Test29', '0100000029', 'rider29@example.com', '2025-02-26 09:00:00', FALSE, NULL),
    ('Rider30', 'Test30', '0100000030', 'rider30@example.com', '2025-02-28 09:00:00', TRUE, 'Fraudulent payment activity'),
    ('Rider31', 'Test31', '0100000031', 'rider31@example.com', '2025-03-02 09:00:00', FALSE, NULL),
    ('Rider32', 'Test32', '0100000032', 'rider32@example.com', '2025-03-04 09:00:00', FALSE, NULL),
    ('Rider33', 'Test33', '0100000033', 'rider33@example.com', '2025-03-06 09:00:00', FALSE, NULL),
    ('Rider34', 'Test34', '0100000034', 'rider34@example.com', '2025-03-08 09:00:00', FALSE, NULL),
    ('Rider35', 'Test35', '0100000035', 'rider35@example.com', '2025-03-10 09:00:00', FALSE, NULL),
    ('Rider36', 'Test36', '0100000036', 'rider36@example.com', '2025-03-12 09:00:00', FALSE, NULL),
    ('Rider37', 'Test37', '0100000037', 'rider37@example.com', '2025-03-14 09:00:00', FALSE, NULL),
    ('Rider38', 'Test38', '0100000038', 'rider38@example.com', '2025-03-16 09:00:00', FALSE, NULL),
    ('Rider39', 'Test39', '0100000039', 'rider39@example.com', '2025-03-18 09:00:00', FALSE, NULL),
    ('Rider40', 'Test40', '0100000040', 'rider40@example.com', '2025-03-20 09:00:00', FALSE, NULL);
