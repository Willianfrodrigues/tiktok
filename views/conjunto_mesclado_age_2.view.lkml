view: conjunto_mesclado_age_2 {
  sql_table_name: `looker-integrations-402615.tiktok_ads.conjunto_mesclado_age_2` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
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
