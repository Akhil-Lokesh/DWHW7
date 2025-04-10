-- Script to create source tables in Snowflake
-- These tables store user session and timestamp data
-- Author: Akhil Lokesh

-- Set up database and schema
USE DATABASE USER_DB_LYNX;
USE SCHEMA RAW_SOURCE;

-- Create USER_SESSION_CHANNEL table
CREATE OR REPLACE TABLE USER_SESSION_CHANNEL (
    SESSION_ID VARCHAR(50),
    USER_ID VARCHAR(50),
    CHANNEL VARCHAR(50)
);

-- Insert sample data into USER_SESSION_CHANNEL
INSERT INTO USER_SESSION_CHANNEL (SESSION_ID, USER_ID, CHANNEL)
VALUES
    ('S001', 'U001', 'organic'),
    ('S002', 'U002', 'paid'),
    ('S003', 'U003', 'social'),
    ('S004', 'U004', 'email'),
    ('S005', 'U005', 'direct'),
    ('S006', 'U001', 'organic'),
    ('S007', 'U002', 'social'),
    ('S008', 'U003', 'direct'),
    ('S009', 'U004', 'email'),
    ('S010', 'U005', 'paid');

-- Create SESSION_TIMESTAMP table
CREATE OR REPLACE TABLE SESSION_TIMESTAMP (
    SESSION_ID VARCHAR(50),
    TIMESTAMP TIMESTAMP_NTZ
);

-- Insert sample data into SESSION_TIMESTAMP
INSERT INTO SESSION_TIMESTAMP (SESSION_ID, TIMESTAMP)
VALUES
    ('S001', '2023-05-01 10:00:00'),
    ('S001', '2023-05-01 10:05:30'),
    ('S002', '2023-05-01 11:15:00'),
    ('S002', '2023-05-01 11:25:45'),
    ('S003', '2023-05-01 13:30:00'),
    ('S003', '2023-05-01 13:32:15'),
    ('S004', '2023-05-02 09:45:00'),
    ('S004', '2023-05-02 10:15:20'),
    ('S005', '2023-05-02 14:20:00'),
    ('S005', '2023-05-02 14:45:30'),
    ('S006', '2023-05-03 16:10:00'),
    ('S006', '2023-05-03 16:30:45'),
    ('S007', '2023-05-03 18:05:00'),
    ('S007', '2023-05-03 18:25:10'),
    ('S008', '2023-05-04 08:30:00'),
    ('S008', '2023-05-04 08:32:45'),
    ('S009', '2023-05-04 12:15:00'),
    ('S009', '2023-05-04 12:45:30'),
    ('S010', '2023-05-05 15:40:00'),
    ('S010', '2023-05-05 16:10:15');

-- Verify the data was created successfully
SELECT * FROM USER_SESSION_CHANNEL;
SELECT * FROM SESSION_TIMESTAMP; 