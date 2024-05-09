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
    sql: COALESCE(${TABLE}.CONVERSIONS, 0) ;;
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

  measure: total_impressoes {
    type: sum
    sql: ${TABLE}.IMPRESSIONS ;;
  }

  measure: total_cliques {
    type: sum
    sql: ${TABLE}.CLICKS ;;
  }

  measure: count {
    type: count
    drill_fields: [advertiser_name, ad_group_name, campaign_name]
  }
}
