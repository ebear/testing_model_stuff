- view: credentials_ldap
  sql_table_name: CREDENTIALS_LDAP
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

  - dimension: last_login_attempt_id
    type: int
    sql: ${TABLE}.LAST_LOGIN_ATTEMPT_ID

  - dimension: ldap_dn
    sql: ${TABLE}.LDAP_DN

  - dimension: ldap_id
    sql: ${TABLE}.LDAP_ID

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOGGED_IN_AT

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

