- view: credentials_email
  sql_table_name: CREDENTIALS_EMAIL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: creat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: encrypted_password
    sql: ${TABLE}.ENCRYPTED_PASSWORD

  - dimension: last_login_attempt_id
    type: int
    sql: ${TABLE}.LAST_LOGIN_ATTEMPT_ID

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOGGED_IN_AT

  - dimension_group: password_reset_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PASSWORD_RESET_SENT_AT

  - dimension: password_reset_token
    sql: ${TABLE}.PASSWORD_RESET_TOKEN

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

