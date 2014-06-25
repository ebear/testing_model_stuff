- view: history
  sql_table_name: HISTORY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: look_id
    type: int
    hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: query_id
    type: int
    hidden: true
    sql: ${TABLE}.QUERY_ID

  - dimension: title
    sql: ${TABLE}.TITLE

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
      - look.id
      - query.id
      - user.first_name
      - user.last_name
      - user.dev_mode_user_id

