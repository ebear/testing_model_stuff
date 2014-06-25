- view: scheduled_look
  sql_table_name: SCHEDULED_LOOK
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: error
    sql: ${TABLE}.ERROR

  - dimension: format
    sql: ${TABLE}.FORMAT

  - dimension: last_run_at
    type: number
    sql: ${TABLE}.LAST_RUN_AT

  - dimension: last_run_signature
    sql: ${TABLE}.LAST_RUN_SIGNATURE

  - dimension: look_id
    type: int
    hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: next_run_at
    type: number
    sql: ${TABLE}.NEXT_RUN_AT

  - dimension: require_change
    type: yesno
    sql: ${TABLE}.REQUIRE_CHANGE

  - dimension: require_no_results
    type: yesno
    sql: ${TABLE}.REQUIRE_NO_RESULTS

  - dimension: require_results
    type: yesno
    sql: ${TABLE}.REQUIRE_RESULTS

  - dimension: schedule
    sql: ${TABLE}.SCHEDULE

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
      - look.id
        # Counters for views that join 'scheduled_look'
      - scheduled_look_action.count

