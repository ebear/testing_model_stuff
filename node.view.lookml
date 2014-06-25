- view: node
  sql_table_name: NODE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: cache_port
    sql: ${TABLE}.CACHE_PORT

  - dimension: hostname
    sql: ${TABLE}.HOSTNAME

  - dimension: is_master
    type: yesno
    sql: ${TABLE}.IS_MASTER

  - dimension_group: last_heartbeat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_HEARTBEAT

  - dimension: mac_adress
    sql: ${TABLE}.MAC_ADRESS

  - dimension: new_secret
    sql: ${TABLE}.NEW_SECRET

  - dimension: node_to_node_port
    sql: ${TABLE}.NODE_TO_NODE_PORT

  - dimension: old_secret
    sql: ${TABLE}.OLD_SECRET

  - dimension: port
    sql: ${TABLE}.PORT

  - dimension: version
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - hostname
      - id
        # Counters for views that join 'node'
      - cache_index.count
      - distributed_mutex.count

