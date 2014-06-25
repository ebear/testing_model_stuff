- view: user_access_filter
  sql_table_name: USER_ACCESS_FILTER
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: dictionary
    sql: ${TABLE}.DICTIONARY

  - dimension: field
    sql: ${TABLE}.FIELD

  - dimension: user_id
    type: int
    hidden: true
    sql: ${TABLE}.USER_ID

  - dimension: value
    sql: ${TABLE}.VALUE

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

