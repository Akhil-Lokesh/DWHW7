{% snapshot snapshot_session_summary %}

{% set metadata_config = {
    'unique_key': 'SESSION_ID',
    'strategy': 'timestamp',
    'updated_at': 'dbt_updated_at',
    'target_schema': 'SNAPSHOTS'
} %}

SELECT * FROM {{ ref('session_summary') }}

{% endsnapshot %}