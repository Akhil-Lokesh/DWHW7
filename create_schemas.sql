-- Script to create required schemas in Snowflake
-- Author: Akhil Lokesh

-- Set up database
USE DATABASE USER_DB_LYNX;

-- Create schemas for different layers of the data pipeline
CREATE SCHEMA IF NOT EXISTS raw_source;  -- For source data
CREATE SCHEMA IF NOT EXISTS analytics;   -- For transformed data
CREATE SCHEMA IF NOT EXISTS snapshot;    -- For historical snapshots

-- Set current schema
USE SCHEMA raw_source; 