- view: query
  sql_table_name: QUERY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: column_limit
    sql: ${TABLE}.COLUMN_LIMIT

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: fields
    sql: ${TABLE}.FIELDS

  - dimension: filters
    sql: ${TABLE}.FILTERS

  - dimension: hash
    sql: ${TABLE}.HASH

  - dimension: limit
    sql: ${TABLE}.LIMIT

  - dimension: model
    sql: ${TABLE}.MODEL

  - dimension: pivots
    sql: ${TABLE}.PIVOTS

  - dimension: runtime
    type: number
    sql: ${TABLE}.RUNTIME

  - dimension: slug
    sql: ${TABLE}.SLUG

  - dimension: sorts
    sql: ${TABLE}.SORTS

  - dimension: total
    type: yesno
    sql: ${TABLE}.TOTAL

  - dimension: view
    sql: ${TABLE}.VIEW

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
        # Counters for views that join 'query'
      - history.count
      - look.count

