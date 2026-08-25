-- =====================================================================
-- DUMMY / SYNTHETIC seed data for base.promotions
-- No dependencies on other tables — this file can be run first.
-- promotion_id is SERIAL, so rows are assigned ids 1..8 in the order below.
-- =====================================================================
SET search_path TO base;

INSERT INTO promotions (code, description, discount_type, discount_value, starts_at, ends_at, active)
VALUES
    ('WELCOME10',  'Dummy promo: 10% off first ride',      'percentage',    10.00, '2025-10-01 00:00:00', '2026-01-31 23:59:59', FALSE),
    ('SAVE20FLAT', 'Dummy promo: flat 20 EGP off',          'fixed_amount',  20.00, '2025-11-01 00:00:00', '2026-02-28 23:59:59', FALSE),
    ('WEEKEND15',  'Dummy promo: weekend discount',         'percentage',    15.00, '2025-12-01 00:00:00', '2026-03-31 23:59:59', FALSE),
    ('FLAT25OFF',  'Dummy promo: flat 25 EGP off',          'fixed_amount',  25.00, '2025-12-15 00:00:00', '2026-02-15 23:59:59', FALSE),
    ('SUMMER30',   'Dummy promo: seasonal discount',        'percentage',    30.00, '2026-01-01 00:00:00', '2026-03-01 23:59:59', FALSE),
    ('REFER50',    'Dummy promo: referral bonus',           'fixed_amount',  50.00, '2026-01-15 00:00:00', '2026-02-28 23:59:59', FALSE),
    ('LOYAL20',    'Dummy promo: loyalty discount',         'percentage',    20.00, '2026-01-20 00:00:00', '2026-12-31 23:59:59', TRUE),
    ('STUDENT15',  'Dummy promo: student discount',         'fixed_amount',  15.00, '2026-01-25 00:00:00', '2026-10-31 23:59:59', TRUE);
