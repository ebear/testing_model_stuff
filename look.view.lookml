- view: look
  sql_table_name: LOOK
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: public
    type: yesno
    sql: ${TABLE}.PUBLIC

  - dimension: public_slug
    sql: ${TABLE}.PUBLIC_SLUG

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
      - user.first_name
      - user.last_name
      - user.dev_mode_user_id
      - query.id
        # Counters for views that join 'look'
      - history.count
      - scheduled_look.count
