view: conjunto_mesclado {
  sql_table_name: `looker-integrations-402615.tiktok_ads.Conjunto_mesclado` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
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
  dimension: total_alcance {
    type: number
    sql: ${TABLE}.total_alcance ;;
  }
  dimension: total_cliques {
    type: number
    sql: ${TABLE}.total_cliques ;;
  }
  dimension: total_impressoes {
    type: number
    sql: ${TABLE}.total_impressoes ;;
  }
  dimension: total_thruplay {
    type: number
    sql: ${TABLE}.total_thruplay ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
