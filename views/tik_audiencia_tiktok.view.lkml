view: tik_audiencia_tiktok {
  sql_table_name: `looker-integrations-402615.tiktok_ads.TIK_AUDIENCIA_TIKTOK` ;;

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
  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.IMPRESSIONS ;;
  }
  dimension: total_landing_page_view {
    type: number
    sql: ${TABLE}.TOTAL_LANDING_PAGE_VIEW ;;
  }
  dimension: video_views_p75 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P75 ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
