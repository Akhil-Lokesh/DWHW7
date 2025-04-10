-- This SQL script is for reference only.
-- It was used to create schemas in Snowflake.
-- You must run this script in Snowflake before running dbt models.

-- Use the correct database
USE DATABASE USER_DB_LYNX;

-- Create schemas
CREATE SCHEMA IF NOT EXISTS raw_source;
CREATE SCHEMA IF NOT EXISTS analytics;
CREATE SCHEMA IF NOT EXISTS snapshot;

-- Set the current schema
USE SCHEMA raw_source; 