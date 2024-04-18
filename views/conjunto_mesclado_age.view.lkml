view: conjunto_mesclado_age {
  sql_table_name: `looker-integrations-402615.tiktok_ads.conjunto_mesclado_age` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }
  dimension: total_cliques {
    type: number
    sql: ${TABLE}.total_cliques ;;
  }
  dimension: total_impressoes {
    type: number
    sql: ${TABLE}.total_impressoes ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
