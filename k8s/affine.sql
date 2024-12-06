-- Create user
CREATE USER affine WITH PASSWORD 'CHANGE_THIS_PASSWORD';

-- Create database
CREATE DATABASE affine WITH OWNER affine;

-- Connect to the affine database
\c affine

-- Grant necessary privileges
GRANT ALL PRIVILEGES ON DATABASE affine TO affine;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO affine;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO affine;
