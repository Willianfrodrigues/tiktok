view: tik_age_gender {
  sql_table_name: `tiktok_ads.TIK_AGE_GENDER` ;;

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.AD_GROUP_ID ;;
  }
  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AD_GROUP_NAME ;;
  }
  dimension: ad_id {
    type: string
    sql: ${TABLE}.AD_ID ;;
  }
  dimension: ad_name {
    type: string
    sql: ${TABLE}.AD_NAME ;;
  }
  dimension: ad_text {
    type: string
    sql: ${TABLE}.AD_TEXT ;;
  }
  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.ADVERTISER_ID ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.ADVERTISER_NAME ;;
  }
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
  dimension: campaign_objective_type {
    type: string
    sql: ${TABLE}.CAMPAIGN_OBJECTIVE_TYPE ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.CLICKS ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }
  dimension: data_source_name {
    type: string
    sql: ${TABLE}.DATA_SOURCE_NAME ;;
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
  measure: count {
    type: count
    drill_fields: [advertiser_name, ad_group_name, data_source_name, campaign_name, ad_name]
  }
}
