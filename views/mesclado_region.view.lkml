view: mesclado_region {
  sql_table_name: `looker-integrations-402615.tiktok_ads.mesclado_region` ;;

  dimension: campaign {
    type: string
    sql: ${TABLE}.CAMPAIGN ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.CLICKS ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.IMPRESSIONS ;;
  }

  dimension: region {
    type: string
    map_layer_name: brazilian_state
    sql: REGEXP_REPLACE(${TABLE}.REGION, ' \\(state\\)$', '') ;;
  }

  measure: count {
    type: count
  }
}
