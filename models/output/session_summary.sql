WITH session_data AS (
    SELECT
        usc.SESSION_ID,
        usc.USER_ID,
        usc.CHANNEL,
        st.session_start_time,
        st.session_end_time,
        st.event_count,
        st.duration_seconds,
        st.duration_bucket
    FROM
        {{ ref('user_session_channel') }} AS usc
    LEFT JOIN
        {{ ref('session_timestamp') }} AS st
        ON usc.SESSION_ID = st.SESSION_ID
)

SELECT
    SESSION_ID,
    USER_ID,
    CHANNEL,
    session_start_time,
    session_end_time,
    event_count,
    duration_seconds,
    duration_bucket,
    CURRENT_TIMESTAMP() AS dbt_updated_at
FROM
    session_data