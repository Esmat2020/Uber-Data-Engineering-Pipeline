-- 1. User Creation
CREATE USER dev_abdelrahman     WITH PASSWORD 'abdelrahman@2026';
CREATE USER dev_mustafa         WITH PASSWORD 'dev_mustafa@2026';

-- 2. Database & Schema Level Privileges
GRANT CONNECT                   ON DATABASE       ride_hailing_db  TO dev_abdelrahman, dev_mustafa;

GRANT USAGE                     ON SCHEMA         ride_hailing_dwh TO dev_abdelrahman, dev_mustafa;

-- 3. Table Permissions (Current & Future)
GRANT SELECT, INSERT, UPDATE, DELETE 
                                ON ALL TABLES IN SCHEMA ride_hailing_dwh 
                                TO dev_abdelrahman, dev_mustafa;

ALTER DEFAULT PRIVILEGES        IN SCHEMA         ride_hailing_dwh 
GRANT SELECT, INSERT, UPDATE, DELETE 
                                ON TABLES 
                                TO dev_abdelrahman, dev_mustafa;

-- 4. Sequence Permissions (Current & Future)
GRANT USAGE, SELECT             ON ALL SEQUENCES IN SCHEMA ride_hailing_dwh 
                                TO dev_abdelrahman, dev_mustafa;

ALTER DEFAULT PRIVILEGES        IN SCHEMA         ride_hailing_dwh 
GRANT USAGE, SELECT             ON SEQUENCES 
                                TO dev_abdelrahman, dev_mustafa;