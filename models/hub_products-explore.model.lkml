connection: "rachana-bq-public-dataset-customer"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: products {
  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}
