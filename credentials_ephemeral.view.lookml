- view: credentials_ephemeral
  sql_table_name: CREDENTIALS_EPHEMERAL
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

  - dimension: login_used
    type: yesno
    sql: ${TABLE}.LOGIN_USED

  - dimension: token
    sql: ${TABLE}.TOKEN

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

