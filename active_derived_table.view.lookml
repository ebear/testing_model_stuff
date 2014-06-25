- view: active_derived_table
  sql_table_name: ACTIVE_DERIVED_TABLE
  fields:

  - dimension: cache_value
    sql: ${TABLE}.CACHE_VALUE

  - dimension: dead_at
    type: int
    sql: ${TABLE}.DEAD_AT

  - dimension: key
    sql: ${TABLE}.KEY

  - dimension: mode
    type: int
    sql: ${TABLE}.MODE

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name

