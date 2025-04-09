WITH session_times AS (
    SELECT
        SESSION_ID,
        MIN(TIMESTAMP) AS session_start_time,
        MAX(TIMESTAMP) AS session_end_time,
        COUNT(*) AS event_count
    FROM
        {{ source('raw_data', 'SESSION_TIMESTAMP') }}
    GROUP BY
        SESSION_ID
),

session_duration AS (
    SELECT
        SESSION_ID,
        session_start_time,
        session_end_time,
        event_count,
        DATEDIFF('second', session_start_time, session_end_time) AS duration_seconds
    FROM
        session_times
    WHERE
        session_start_time IS NOT NULL
        AND session_end_time IS NOT NULL
)

SELECT
    SESSION_ID,
    session_start_time,
    session_end_time,
    event_count,
    duration_seconds,
    CASE
        WHEN duration_seconds < 60 THEN 'less_than_1_min'
        WHEN duration_seconds < 300 THEN '1_to_5_min'
        WHEN duration_seconds < 900 THEN '5_to_15_min'
        ELSE 'more_than_15_min'
    END AS duration_bucket
FROM
    session_duration