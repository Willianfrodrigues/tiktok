connection: "ads_tiktok"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ads_tiktok_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: ads_tiktok_default_datagroup

explore: tik_geo {}

explore: tik_age_gender {}

explore: tik_ad {}

explore: tik_custom_tiktok_table {}
