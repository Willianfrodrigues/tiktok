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


#----------------------Join-----------------------------------------#

explore: conjunto_mesclado {
    # Configurações adicionais podem ser adicionadas aqui
  # Exemplo de join:
  join: tik_custom_tiktok_table {
    sql_on: ${conjunto_mesclado.campaign_name} = ${tik_custom_tiktok_table.campaign_name};;
    relationship: many_to_one
  }}
