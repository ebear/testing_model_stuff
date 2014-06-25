- view: credentials_looker_openid
  sql_table_name: CREDENTIALS_LOOKER_OPENID
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension_group: last_login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_LOGIN_AT

  - dimension: last_login_ip
    sql: ${TABLE}.LAST_LOGIN_IP

  - dimension: secret
    sql: ${TABLE}.SECRET

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

