- view: event
  sql_table_name: EVENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: name
    sql: ${TABLE}.NAME

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
      - name
      - id
      - user.first_name
      - user.last_name
      - user.dev_mode_user_id
        # Counters for views that join 'event'
      - event_attribute.count

