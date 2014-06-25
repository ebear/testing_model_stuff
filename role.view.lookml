- view: role
  sql_table_name: ROLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: models
    sql: ${TABLE}.MODELS

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: permissions
    sql: ${TABLE}.PERMISSIONS

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name
      - id
        # Counters for views that join 'role'
      - role_user.count

