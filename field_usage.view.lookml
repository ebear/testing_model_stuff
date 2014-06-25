- view: field_usage
  sql_table_name: FIELD_USAGE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: base_view
    sql: ${TABLE}.BASE_VIEW

  - dimension: field
    sql: ${TABLE}.FIELD

  - dimension: model
    sql: ${TABLE}.MODEL

  - dimension: times_used
    type: int
    sql: ${TABLE}.TIMES_USED

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id

