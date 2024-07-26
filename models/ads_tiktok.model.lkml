connection: "ads_tiktok"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ads_tiktok_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}


persist_with: ads_tiktok_default_datagroup


explore: conjunto_mesclado_age {}

explore: tik_custom_tiktok_table {}

explore: conjunto_mesclado_age_2 {}

explore: inflr_planilha_for {}


#----------------------Join-----------------------------------------#

explore: conjunto_mesclado {}
explore: strepsils {}
explore: conjunto_mesclado2 {}
explore: uber_conj_mesclado_ {}
explore: tik_reach_criativo_tiktok {}
explore:  tik_reach_campaign {}
