connection: "rachana-bq-public-dataset-customer"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
