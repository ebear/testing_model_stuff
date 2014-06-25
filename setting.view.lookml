- view: setting
  sql_table_name: SETTING
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: key
    sql: ${TABLE}.KEY

  - dimension: value
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id

