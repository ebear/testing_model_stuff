- view: event_attribute
  sql_table_name: EVENT_ATTRIBUTE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: event_id
    type: int
    hidden: true
    sql: ${TABLE}.EVENT_ID

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: value
    sql: ${TABLE}.VALUE

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - name
      - event.name
      - event.id

