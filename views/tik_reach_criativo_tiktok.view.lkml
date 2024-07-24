view: tik_reach_criativo_tiktok {
  sql_table_name: `looker-integrations-402615.tiktok_ads.TIK_REACH_CRIATIVO_TIKTOK` ;;

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AD_GROUP_NAME ;;
  }
  dimension: ad_name {
    type: string
    sql: ${TABLE}.AD_NAME ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.ADVERTISER_NAME ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension: reach {
    type: number
    sql: ${TABLE}.REACH ;;
  }
  dimension: yearmonth {
    type: string
    sql: ${TABLE}.YEARMONTH ;;
  }
  measure: count {
    type: count
    drill_fields: [advertiser_name, campaign_name, ad_group_name, ad_name]
  }
}
