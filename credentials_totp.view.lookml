- view: credentials_totp
  sql_table_name: CREDENTIALS_TOTP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: secret
    sql: ${TABLE}.SECRET

  - dimension: user_id
    type: int
    hidden: true
    sql: ${TABLE}.USER_ID

  - dimension: verified
    type: yesno
    sql: ${TABLE}.VERIFIED

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

