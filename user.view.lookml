- view: user
  sql_table_name: USER
  fields:

  - dimension: dev_mode_user_id
    primary_key: true
    type: int
    sql: ${TABLE}.DEV_MODE_USER_ID

  - dimension: browser_count
    type: int
    sql: ${TABLE}.BROWSER_COUNT

  - dimension: chat_popover
    type: yesno
    sql: ${TABLE}.CHAT_POPOVER

  - dimension: dev_mode
    type: yesno
    sql: ${TABLE}.DEV_MODE

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: first_name
    sql: ${TABLE}.FIRST_NAME

  - dimension: id
    type: int
    sql: ${TABLE}.ID

  - dimension: is_admin
    type: yesno
    sql: ${TABLE}.IS_ADMIN

  - dimension: is_disabled
    type: yesno
    sql: ${TABLE}.IS_DISABLED

  - dimension: is_looker_employee
    type: yesno
    sql: ${TABLE}.IS_LOOKER_EMPLOYEE

  - dimension: last_name
    sql: ${TABLE}.LAST_NAME

  - dimension: models
    sql: ${TABLE}.MODELS

  - dimension: models_dir
    sql: ${TABLE}.MODELS_DIR

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - first_name
      - last_name
      - dev_mode_user_id
        # Counters for views that join 'user'
      - api_nonce.count
      - credentials_api.count
      - credentials_email.count
      - credentials_ephemeral.count
      - credentials_ldap.count
      - credentials_looker_openid.count
      - credentials_totp.count
      - db_connection.count
      - event.count
      - history.count
      - look.count
      - role_user.count
      - scheduled_look.count
      - scheduled_look_action.count
      - session.count
      - user_access_filter.count
      - user_attribute.count

