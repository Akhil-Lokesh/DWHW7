# Session Analytics dbt Project

This dbt project connects to Snowflake and provides models for analyzing user session data.

## Project Structure

- `models/input/`: Contains input models that source data from raw tables
- `models/output/`: Contains output models that join and transform input models
- `snapshots/`: Contains snapshot configurations for historical tracking
- `tests/`: Contains custom tests
- `macros/`: Contains custom macros

## Setup

1. Update the `profiles.yml` with your Snowflake credentials
2. Run `dbt debug` to verify the connection
3. Run `dbt run` to build the models
4. Run `dbt snapshot` to capture historical data
5. Run `dbt test` to validate the models

## Models

### Input Models
- `user_session_channel`: User session data including channel information
- `session_timestamp`: Session timing data including start/end times and duration

### Output Models
- `session_summary`: Combined session information with user, channel, and timing data

## Snapshots
- `snapshot_session_summary`: Historical tracking of session summary data