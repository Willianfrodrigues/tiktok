connection: "ads_tiktok"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ads_tiktok_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: ads_tiktok_default_datagroup



explore: tik_custom_tiktok_table {}

explore: conjunto_mesclado {
  join: conjunto_mesclado_age {
    type: left_outer
    sql_on: ${conjunto_mesclado.campaign_name} = ${conjunto_mesclado_age.campaign_name} ;;
    relationship: many_to_one
  }
}

explore: conjunto_mesclado_age {}
