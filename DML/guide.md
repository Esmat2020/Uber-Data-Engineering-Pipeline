# DML Seed Data — Execution Guide

This folder contains **dummy / synthetic data only** — every rider, driver, phone
number, email, license, vehicle plate, and trip in these files is made up for
development and testing purposes. None of it refers to real people, drivers, or
trips. Names use obvious placeholder patterns (e.g. `Rider01`, `Driver07`,
`rider01@example.com`) precisely so they are never mistaken for real records.

## Why order matters

Every table in `base` uses a `SERIAL` primary key and several tables have
`FOREIGN KEY` constraints pointing at other tables (see `../DDL/ride_hailing_tables.sql`).
Postgres will reject an `INSERT` into a table whose referenced parent rows
don't exist yet. The scripts below **must be run in this order** so that every
FK reference resolves before it's used, and so that the auto-generated
`SERIAL` ids line up with the ids hard-coded in the dependent files (e.g.
`trips.sql` assumes `riders` 1–40 and `drivers` 1–20 already exist).

## Execution order

Run each file once, top to bottom.

| # | File | Depends on | Rows | Notes |
|---|------|-----------|------|-------|
| 1 | `riders.sql` | — | 40 | Independent table. `rider_id` 1–40. |
| 2 | `drivers.sql` | — | 20 | Independent table. `driver_id` 1–20. |
| 3 | `promotions.sql` | — | 8 | Independent table. `promotion_id` 1–8. |
| 4 | `driver_documents.sql` | drivers | 40 | 2 documents per driver. |
| 5 | `vehicles.sql` | drivers | 25 | 20 drivers, 5 with a prior (non-current) vehicle on record. |
| 6 | `trips.sql` | riders, drivers | 50 | Core fact table. Mixes `completed`, `cancelled_by_rider`, `cancelled_by_driver`, `no_driver_found`, `ongoing`, `requested`. `trip_id` 1–50. |
| 7 | `payments.sql` | trips, riders | 30 | One row per completed trip. |
| 8 | `ratings.sql` | trips, riders, drivers | 25 | ~85% of completed trips (not every trip is rated). |
| 9 | `driver_fee_collections.sql` | drivers, trips | 30 | One row per completed trip (platform commission). |
| 10 | `trip_promotions.sql` | trips, promotions | 8 | Promo redemptions on a subset of completed trips. |

Steps 1–3 have no dependencies and can technically run in any order relative
to each other, but keep them before step 4 onward. Steps 7–10 all depend on
`trips.sql` (step 6) and can be run in any order relative to each other once
step 6 is done.

## Re-running

All primary keys are `SERIAL`, so these scripts assume the tables are empty
(fresh DDL run). Re-running them against a non-empty database will insert
duplicate rows and the hard-coded FK ids in the dependent files (e.g. `driver_id`,
`trip_id`) will no longer line up with the newly generated ids. To reset, drop
and recreate the tables (re-run the DDL) before re-seeding.
