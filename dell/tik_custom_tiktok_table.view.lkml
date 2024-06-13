view: tik_custom_tiktok_table {
  sql_table_name: `looker-integrations-402615.tiktok_ads.TIK_CUSTOM_TIKTOK_TABLE` ;;

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AD_GROUP_NAME ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.ADVERTISER_NAME ;;
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
  dimension: conversions {
    type: number
    sql: ${TABLE}.CONVERSIONS ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }
  dimension: cost_per_1000_reached {
    type: number
    sql: ${TABLE}.COST_PER_1000_REACHED ;;
  }
  dimension: cost_per_conversion {
    type: number
    sql: ${TABLE}.COST_PER_CONVERSION ;;
  }
  dimension: cost_per_real_time_conversion {
    type: number
    sql: ${TABLE}.COST_PER_REAL_TIME_CONVERSION ;;
  }
  dimension: cost_per_result {
    type: number
    sql: ${TABLE}.COST_PER_RESULT ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.CPM ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.CTR ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }
  dimension: engagements {
    type: number
    sql: ${TABLE}.ENGAGEMENTS ;;
  }
  dimension: frequency {
    type: number
    sql: ${TABLE}.FREQUENCY ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.IMPRESSIONS ;;
  }
  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }
  dimension: reach {
    type: number
    sql: ${TABLE}.REACH ;;
  }
  dimension: video_play_actions {
    type: number
    sql: ${TABLE}.VIDEO_PLAY_ACTIONS ;;
  }
  dimension: video_views_p100 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P100 ;;
  }
  dimension: video_views_p25 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P25 ;;
  }
  dimension: video_views_p50 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P50 ;;
  }
  dimension: video_views_p75 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P75 ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, advertiser_name, ad_group_name]
  }
}