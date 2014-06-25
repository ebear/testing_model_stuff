- view: login_attempt
  sql_table_name: LOGIN_ATTEMPT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension: ip
    sql: ${TABLE}.IP

  - dimension: key
    sql: ${TABLE}.KEY

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id

