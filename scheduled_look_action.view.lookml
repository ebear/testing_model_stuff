- view: scheduled_look_action
  sql_table_name: SCHEDULED_LOOK_ACTION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: external_email
    sql: ${TABLE}.EXTERNAL_EMAIL

  - dimension: scheduled_look_id
    type: int
    hidden: true
    sql: ${TABLE}.SCHEDULED_LOOK_ID

  - dimension: slug
    sql: ${TABLE}.SLUG

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
      - scheduled_look.id
      - user.first_name
      - user.last_name
      - user.dev_mode_user_id

