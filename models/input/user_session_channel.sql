WITH user_session_data AS (
    SELECT
        SESSION_ID,
        USER_ID,
        CHANNEL
    FROM
        {{ source('raw_data', 'USER_SESSION_CHANNEL') }}
),

clean_sessions AS (
    SELECT
        SESSION_ID,
        USER_ID,
        COALESCE(CHANNEL, 'unknown') AS CHANNEL
    FROM
        user_session_data
    WHERE
        SESSION_ID IS NOT NULL
)

SELECT
    SESSION_ID,
    USER_ID,
    CHANNEL
FROM
    clean_sessions