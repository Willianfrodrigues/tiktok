view: mesclado_region {
  sql_table_name: `looker-integrations-402615.tiktok_ads.mesclado_region` ;;

  dimension: campaign {
    type: string
    sql: ${TABLE}.CAMPAIGN ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }
  dimension: total_clicks {
    type: number
    sql: ${TABLE}.TOTAL_CLICKS ;;
  }
  dimension: total_impressions {
    type: number
    sql: ${TABLE}.TOTAL_IMPRESSIONS ;;
  }
  measure: count {
    type: count
  }
}
