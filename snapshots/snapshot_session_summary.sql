-- Snapshot configuration for tracking historical changes in session_summary
-- Uses timestamp-based strategy to track changes over time
-- Author: Akhil Lokesh

{% snapshot snapshot_session_summary %}

{{
    config(
      target_schema='snapshot',
      unique_key='sessionId',
      strategy='timestamp',
      updated_at='ts',
      invalidate_hard_deletes=True
    )
}}

SELECT * FROM {{ ref('session_summary') }}

{% endsnapshot %}