view: tik_reach_campaign {
  sql_table_name: `looker-integrations-402615.tiktok_ads.TIK_REACH_CAMPAIGN` ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.IMPRESSIONS ;;
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
    drill_fields: [campaign_name]
  }
}
