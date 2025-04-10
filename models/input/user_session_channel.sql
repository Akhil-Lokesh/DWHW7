SELECT
  USER_ID as userId,
  SESSION_ID as sessionId,
  CHANNEL as channel
FROM {{ source('raw', 'USER_SESSION_CHANNEL') }}
WHERE SESSION_ID IS NOT NULL