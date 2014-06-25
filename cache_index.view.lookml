- view: cache_index
  sql_table_name: CACHE_INDEX
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRATION

  - dimension: hash
    sql: ${TABLE}.HASH

  - dimension: node_id
    type: int
    hidden: true
    sql: ${TABLE}.NODE_ID

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - node.hostname
      - node.id

