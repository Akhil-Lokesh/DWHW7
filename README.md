# Session Analytics dbt Project

This is my dbt project that connects to Snowflake for analyzing user session data. I've created a complete data pipeline that transforms source data into meaningful analytics and implements snapshot functionality for historical tracking.

## Project Structure

- `models/input/`: Input models that source data from raw tables
- `models/output/`: Output models that join and transform input models
- `snapshots/`: Snapshot configurations for historical tracking
- `tests/`: Custom tests
- `macros/`: Custom macros
- `create_source_tables.sql`: My SQL script to create source tables in Snowflake

## Prerequisites

Before running this project, you need to:
1. Set up a Snowflake account
2. Create the required schemas and tables in Snowflake using my scripts

## Setup

1. Update the `profiles.yml` with your Snowflake credentials
2. Run `dbt debug` to verify the connection
3. Run `dbt run` to build the models
4. Run `dbt snapshot` to capture historical data
5. Run `dbt test` to validate the models

## Models

### Input Models
- `user_session_channel`: User session data including channel information
- `session_timestamp`: Session timing data including timestamps

### Output Models
- `session_summary`: Combined session information with user, channel, and timestamp data

## Snapshots
- `snapshot_session_summary`: Historical tracking of session summary data

## Tests
- Uniqueness test for sessionId
- Not-null test for sessionId