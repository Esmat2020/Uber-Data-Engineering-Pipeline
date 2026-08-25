SET search_path TO base;

INSERT INTO drivers (first_name, last_name, phone, email, license_number, status, created_at, is_banned, banned_reason)
VALUES
    ('Driver01', 'Fleet01', '0120000001', 'driver01@example.com', 'DL-TEST-0001', 'active', '2024-11-01 08:00:00', FALSE, NULL),
    ('Driver02', 'Fleet02', '0120000002', 'driver02@example.com', 'DL-TEST-0002', 'active', '2024-11-04 08:00:00', FALSE, NULL),
    ('Driver03', 'Fleet03', '0120000003', 'driver03@example.com', 'DL-TEST-0003', 'active', '2024-11-07 08:00:00', FALSE, NULL),
    ('Driver04', 'Fleet04', '0120000004', 'driver04@example.com', 'DL-TEST-0004', 'inactive', '2024-11-10 08:00:00', FALSE, NULL),
    ('Driver05', 'Fleet05', '0120000005', 'driver05@example.com', 'DL-TEST-0005', 'active', '2024-11-13 08:00:00', FALSE, NULL),
    ('Driver06', 'Fleet06', '0120000006', 'driver06@example.com', 'DL-TEST-0006', 'active', '2024-11-16 08:00:00', FALSE, NULL),
    ('Driver07', 'Fleet07', '0120000007', 'driver07@example.com', 'DL-TEST-0007', 'suspended', '2024-11-19 08:00:00', TRUE, 'Reckless driving reports'),
    ('Driver08', 'Fleet08', '0120000008', 'driver08@example.com', 'DL-TEST-0008', 'active', '2024-11-22 08:00:00', FALSE, NULL),
    ('Driver09', 'Fleet09', '0120000009', 'driver09@example.com', 'DL-TEST-0009', 'active', '2024-11-25 08:00:00', FALSE, NULL),
    ('Driver10', 'Fleet10', '0120000010', 'driver10@example.com', 'DL-TEST-0010', 'inactive', '2024-11-28 08:00:00', FALSE, NULL),
    ('Driver11', 'Fleet11', '0120000011', 'driver11@example.com', 'DL-TEST-0011', 'active', '2024-12-01 08:00:00', FALSE, NULL),
    ('Driver12', 'Fleet12', '0120000012', 'driver12@example.com', 'DL-TEST-0012', 'active', '2024-12-04 08:00:00', FALSE, NULL),
    ('Driver13', 'Fleet13', '0120000013', 'driver13@example.com', 'DL-TEST-0013', 'active', '2024-12-07 08:00:00', FALSE, NULL),
    ('Driver14', 'Fleet14', '0120000014', 'driver14@example.com', 'DL-TEST-0014', 'pending_verification', '2024-12-10 08:00:00', FALSE, NULL),
    ('Driver15', 'Fleet15', '0120000015', 'driver15@example.com', 'DL-TEST-0015', 'active', '2024-12-13 08:00:00', FALSE, NULL),
    ('Driver16', 'Fleet16', '0120000016', 'driver16@example.com', 'DL-TEST-0016', 'active', '2024-12-16 08:00:00', FALSE, NULL),
    ('Driver17', 'Fleet17', '0120000017', 'driver17@example.com', 'DL-TEST-0017', 'inactive', '2024-12-19 08:00:00', TRUE, 'Multiple rider complaints'),
    ('Driver18', 'Fleet18', '0120000018', 'driver18@example.com', 'DL-TEST-0018', 'active', '2024-12-22 08:00:00', FALSE, NULL),
    ('Driver19', 'Fleet19', '0120000019', 'driver19@example.com', 'DL-TEST-0019', 'active', '2024-12-25 08:00:00', FALSE, NULL),
    ('Driver20', 'Fleet20', '0120000020', 'driver20@example.com', 'DL-TEST-0020', 'active', '2024-12-28 08:00:00', FALSE, NULL);
