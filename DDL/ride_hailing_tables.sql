-- Set the default search path to the schema
SET search_path TO base;

-- 1. Create Independent Tables

CREATE TABLE riders (
    rider_id      SERIAL            PRIMARY KEY,
    first_name    VARCHAR(100)      NOT NULL,
    last_name     VARCHAR(100)      NOT NULL,
    phone         VARCHAR(20)       UNIQUE,
    email         VARCHAR(255)      UNIQUE,
    created_at    TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    is_banned     BOOLEAN           DEFAULT FALSE,
    banned_reason TEXT
);

CREATE TABLE drivers (
    driver_id      SERIAL           PRIMARY KEY,
    first_name     VARCHAR(100)     NOT NULL,
    last_name      VARCHAR(100)     NOT NULL,
    phone          VARCHAR(20)      UNIQUE,
    email          VARCHAR(255)     UNIQUE,
    license_number VARCHAR(100)     UNIQUE,
    status         VARCHAR(50),
    created_at     TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    is_banned      BOOLEAN          DEFAULT FALSE,
    banned_reason  TEXT
);

CREATE TABLE promotions (
    promotion_id    SERIAL          PRIMARY KEY,
    code            VARCHAR(50)     UNIQUE NOT NULL,
    description     TEXT,
    discount_type   VARCHAR(50),
    discount_value  DECIMAL(10, 2),
    starts_at       TIMESTAMP,
    ends_at         TIMESTAMP,
    active          BOOLEAN         DEFAULT TRUE
);

-- 2. Create Dependent Tables (Level 1)

CREATE TABLE driver_documents (
    document_id         SERIAL         PRIMARY KEY,
    driver_id           INTEGER        NOT NULL,
    document_type       VARCHAR(100),
    document_number     VARCHAR(100),
    expiry_date         DATE,
    verification_status VARCHAR(50),
    FOREIGN KEY         (driver_id)    REFERENCES drivers(driver_id) ON DELETE CASCADE
);

CREATE TABLE vehicles (
    vehicle_id           SERIAL        PRIMARY KEY,
    driver_id            INTEGER       NOT NULL,
    effective_start_date TIMESTAMP,
    effective_end_date   TIMESTAMP,
    is_current           BOOLEAN       DEFAULT TRUE,
    make                 VARCHAR(100),
    model                VARCHAR(100),
    year                 INTEGER,
    plate_number         VARCHAR(50)   UNIQUE,
    color                VARCHAR(50),
    status               VARCHAR(50),
    FOREIGN KEY          (driver_id)   REFERENCES drivers(driver_id) ON DELETE CASCADE
);

-- 3. Create Core Trip Table

CREATE TABLE trips (
    trip_id             SERIAL              PRIMARY KEY,
    rider_id            INTEGER             NOT NULL,
    driver_id           INTEGER, -- Can be null if trip is requested but unassigned
    pickup_latitude     DOUBLE PRECISION,
    pickup_longitude    DOUBLE PRECISION,
    dropoff_latitude    DOUBLE PRECISION,
    dropoff_longitude   DOUBLE PRECISION,
    requested_at        TIMESTAMP           DEFAULT CURRENT_TIMESTAMP,
    cancelled_at        TIMESTAMP,
    assigned_at         TIMESTAMP,
    accepted_at         TIMESTAMP,
    started_at          TIMESTAMP,
    completed_at        TIMESTAMP,
    trip_status         VARCHAR(50),
    distance_km         DOUBLE PRECISION,
    duration_minutes    INTEGER,
    estimated_fare      DECIMAL(10, 2),
    final_fare          DECIMAL(10, 2),
    FOREIGN KEY         (rider_id)          REFERENCES riders(rider_id),
    FOREIGN KEY         (driver_id)         REFERENCES drivers(driver_id)
);

-- 4. Create Dependent Tables (Level 2)

CREATE TABLE payments (
    payment_id          SERIAL              PRIMARY KEY,
    trip_id             INTEGER             NOT NULL,
    rider_id            INTEGER             NOT NULL,
    amount              DECIMAL(10, 2)      NOT NULL,
    currency            VARCHAR(10)         DEFAULT 'USD',
    payment_method      VARCHAR(50),
    payment_status      VARCHAR(50),
    FOREIGN KEY         (trip_id)           REFERENCES trips(trip_id),
    FOREIGN KEY         (rider_id)          REFERENCES riders(rider_id)
);

CREATE TABLE ratings (
    rating_id           SERIAL              PRIMARY KEY,
    trip_id             INTEGER             NOT NULL,
    rider_id            INTEGER             NOT NULL,
    driver_id           INTEGER             NOT NULL,
    rider_score         INTEGER             CHECK (rider_score BETWEEN 1 AND 5),
    driver_score        INTEGER             CHECK (driver_score BETWEEN 1 AND 5),
    FOREIGN KEY         (trip_id)           REFERENCES trips(trip_id),
    FOREIGN KEY         (rider_id)          REFERENCES riders(rider_id),
    FOREIGN KEY         (driver_id)         REFERENCES drivers(driver_id)
);

CREATE TABLE driver_fee_collections (
    fee_id              SERIAL              PRIMARY KEY,
    driver_id           INTEGER             NOT NULL,
    trip_id             INTEGER             NOT NULL,
    fee_amount          DECIMAL(10, 2)      NOT NULL,
    FOREIGN KEY         (driver_id)         REFERENCES drivers(driver_id),
    FOREIGN KEY         (trip_id)           REFERENCES trips(trip_id)
);

CREATE TABLE trip_promotions (
    trip_promotion_id   SERIAL              PRIMARY KEY,
    trip_id             INTEGER             NOT NULL,
    promotion_id        INTEGER             NOT NULL,
    discount_applied    DECIMAL(10, 2)      NOT NULL,
    FOREIGN KEY         (trip_id)           REFERENCES trips(trip_id),
    FOREIGN KEY         (promotion_id)      REFERENCES promotions(promotion_id)
);