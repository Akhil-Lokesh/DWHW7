-- Input model for session timestamp data
-- Standardizes timestamp fields from the source table
-- Author: Akhil Lokesh

SELECT
  SESSION_ID as sessionId,
  TIMESTAMP as ts
FROM {{ source('raw', 'SESSION_TIMESTAMP') }}
WHERE SESSION_ID IS NOT NULL