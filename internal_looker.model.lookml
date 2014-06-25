- connection: looker

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- base_view: active_derived_table

- base_view: api_noncy
  joins:
    - join: user
      foreign_key: user_id


- base_view: cache_index
  joins:
    - join: node
      foreign_key: node_id


- base_view: credentials_api
  joins:
    - join: user
      foreign_key: user_id


- base_view: credentials_email
  joins:
    - join: user
      foreign_key: user_id


- base_view: credentials_ephemeral
  joins:
    - join: user
      foreign_key: user_id


- base_view: credentials_ldap
  joins:
    - join: user
      foreign_key: user_id


- base_view: credentials_looker_openid
  joins:
    - join: user
      foreign_key: user_id


- base_view: credentials_totp
  joins:
    - join: user
      foreign_key: user_id


- base_view: db_connection
  joins:
    - join: user
      foreign_key: user_id


- base_view: distributed_mutex
  joins:
    - join: node
      foreign_key: node_id


- base_view: event
  joins:
    - join: user
      foreign_key: user_id


- base_view: event_attribute
  joins:
    - join: event
      foreign_key: event_id

    - join: user
      foreign_key: event.user_id


- base_view: field_usage

- base_view: history
  joins:
    - join: look
      foreign_key: look_id

    - join: query
      foreign_key: query_id

    - join: user
      foreign_key: user_id


- base_view: login_attempt

- base_view: look
  joins:
    - join: user
      foreign_key: user_id

    - join: query
      foreign_key: query_id


- base_view: mail_job

- base_view: node

- base_view: one_time_key

- base_view: query

- base_view: role

- base_view: role_user
  joins:
    - join: role
      foreign_key: role_id

    - join: user
      foreign_key: user_id


- base_view: scheduled_look
  joins:
    - join: user
      foreign_key: user_id

    - join: look
      foreign_key: look_id

    - join: query
      foreign_key: look.query_id


- base_view: scheduled_look_action
  joins:
    - join: scheduled_look
      foreign_key: scheduled_look_id

    - join: user
      foreign_key: user_id

    - join: look
      foreign_key: scheduled_look.look_id

    - join: query
      foreign_key: look.query_id


- base_view: schema_migrations

- base_view: session
  joins:
    - join: user
      foreign_key: user_id


- base_view: setting

- base_view: user

- base_view: user_access_filter
  joins:
    - join: user
      foreign_key: user_id


- base_view: user_attribute
  joins:
    - join: user
      foreign_key: user_id


