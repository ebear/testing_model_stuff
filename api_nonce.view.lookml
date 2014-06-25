- view: api_nonce
  sql_table_name: API_NONCE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: nonce
    sql: ${TABLE}.NONCE

  - dimension_group: time
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TIME

  - dimension: user_id
    type: int
    hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - user.first_name
      - user.last_name
      - user.dev_mode_user_id

