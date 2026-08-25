-- =====================================================================
-- DUMMY / SYNTHETIC seed data for base.trip_promotions
-- Requires base.trips and base.promotions to be loaded first (FKs).
-- Promo redemptions on a subset of completed trips (8 rows).
-- =====================================================================
SET search_path TO base;

INSERT INTO trip_promotions (trip_id, promotion_id, discount_applied)
VALUES
    (1,  1, 4.43),
    (5,  2, 9.40),
    (10, 3, 15.88),
    (15, 4, 9.40),
    (26, 5, 10.82),
    (30, 6, 15.88),
    (35, 7, 9.40),
    (40, 8, 15.88);
