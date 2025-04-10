# Session Analytics dbt Project

This dbt project connects to Snowflake and provides models for analyzing user session data. It demonstrates using dbt with Snowflake to transform source data into meaningful output and implement snapshot functionality.

## Project Structure

- `models/input/`: Contains input models that source data from raw tables
- `models/output/`: Contains output models that join and transform input models
- `snapshots/`: Contains snapshot configurations for historical tracking
- `tests/`: Contains custom tests
- `macros/`: Contains custom macros
- `create_source_tables.sql`: SQL script used to create source tables in Snowflake

## Prerequisites

Before running this project, you need to:
1. Set up a Snowflake account
2. Create the required schemas and tables in Snowflake (see `create_schemas.sql` and `create_source_tables.sql`)

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