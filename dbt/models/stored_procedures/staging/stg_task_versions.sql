SELECT
    ROOT_TASK_ID,
    GRAPH_VERSION,
    GRAPH_VERSION_CREATED_ON,
    NAME,
    ID,
    DATABASE_ID,
    DATABASE_NAME,
    SCHEMA_ID,
    SCHEMA_NAME,
    OWNER,
    COMMENT,
    WAREHOUSE_NAME,
    SCHEDULE,
    PREDECESSORS,
    STATE,
    DEFINITION,
    CONDITION_TEXT,
    ALLOW_OVERLAPPING_EXECUTION,
    ERROR_INTEGRATION,
    LAST_COMMITTED_ON,
    LAST_SUSPENDED_ON,
    CURRENT_TIMESTAMP AS INGESTION_TIME

FROM {{ source('snowflake_account_usage', 'task_versions') }}