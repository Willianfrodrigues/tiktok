view: conjunto_mesclado {
  sql_table_name: `looker-integrations-402615.tiktok_ads.Conjunto_mesclado` ;;

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
  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }
  dimension: total_alcance {
    type: number
    sql: ${TABLE}.total_alcance ;;
  }
  dimension: total_clicks {
    type: number
    sql: ${TABLE}.total_clicks ;;
  }
  dimension: total_impressions {
    type: number
    sql: ${TABLE}.total_impressions ;;
  }
  dimension: total_thruplay {
    type: number
    sql: ${TABLE}.total_thruplay ;;
  }

  measure: impressoes {
    type: sum
    sql: ${TABLE}.total_impressions ;;
  }

  measure:  total_cadastros {
    type: sum
    sql: ${TABLE}.total_cadastros ;;
  }


  measure: cliques {
    type: sum
    sql: ${TABLE}.total_clicks ;;
  }

  measure: thruplay {
  type: sum
  sql: ${TABLE}.total_thruplay ;;
  }

  measure: alcance {
    type: sum
    sql: ${TABLE}.total_alcance ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
