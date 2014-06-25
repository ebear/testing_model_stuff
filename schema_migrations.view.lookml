- view: schema_migrations
  sql_table_name: SCHEMA_MIGRATIONS
  fields:

  - dimension: filename
    sql: ${TABLE}.FILENAME

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - filename

