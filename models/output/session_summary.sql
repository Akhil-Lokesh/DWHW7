-- Output model combining user session and timestamp data
-- Joins the two input models and applies aggregations
-- Uses GROUP BY to ensure sessionId uniqueness
-- Author: Akhil Lokesh

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