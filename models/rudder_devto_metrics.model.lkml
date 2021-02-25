connection: "rudder_devto_metrics"

# include all the views
include: "/views/**/*.view"

datagroup: rudder_devto_metrics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rudder_devto_metrics_default_datagroup

explore: devto_post_performance {
  label: "devto Post Performance - All Data"
}
explore: devto_post_performance_current {
  label: "devto Post Performance - Current"
}
