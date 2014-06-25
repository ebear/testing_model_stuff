- view: role_user
  sql_table_name: ROLE_USER
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: role_id
    type: int
    hidden: true
    sql: ${TABLE}.ROLE_ID

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
      - role.name
      - role.id
      - user.first_name
      - user.last_name
      - user.dev_mode_user_id

