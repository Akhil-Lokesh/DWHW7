SELECT
    u.userId,
    u.sessionId,
    u.channel,
    MIN(st.ts) as ts
FROM
    {{ ref('user_session_channel') }} u
JOIN
    {{ ref('session_timestamp') }} st
    ON u.sessionId = st.sessionId
GROUP BY 1, 2, 3