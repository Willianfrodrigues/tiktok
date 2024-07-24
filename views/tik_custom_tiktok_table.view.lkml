view: tik_custom_tiktok_table {
  sql_table_name: `looker-integrations-402615.tiktok_ads.TIK_CUSTOM_TIKTOK_TABLE` ;;

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
  dimension: clicks {
    type: number
    sql: ${TABLE}.TOTAL_LANDING_PAGE_VIEW ;;
  }

  dimension: metrica_de_cliques_cliques{
    type: number
    sql: ${TABLE}.CLICKS ;;
  }


  dimension: conversions {
    type: number
    sql: COALESCE(${TABLE}.CONVERSIONS, 0) ;;
  }

  dimension: follows {
    type: number
    sql: ${TABLE}.FOLLOWS ;;
  }
  dimension: frequency {
    type: number
    sql: ${TABLE}.FREQUENCY ;;
  }
  dimension: likes {
    type: number
    sql: ${TABLE}.LIKES ;;
  }
  dimension: shares {
    type: number
    sql: ${TABLE}.SHARES ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.COMMENTS ;;
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
    sql: ${TABLE}.TOTAL_LANDING_PAGE_VIEW ;;
  }

  dimension: Origem{
    type: string
    sql: 'tiktok' ;;
  }


  dimension: influenciador {
    type: string
    sql: CASE

  WHEN ${ad_group_name} LIKE '%NUNVA VI 1 CIENTISTA%' OR ${ad_group_name} LIKE '%NUNCA VI%' THEN 'Nunca vi 1 cientista'
   WHEN ${ad_group_name} LIKE '%RAFAELA AMORIM%' THEN 'Rafaela Amorim'
   WHEN ${ad_group_name} LIKE '%TATI MACHADO%' THEN 'Tati Machado'
   WHEN ${ad_group_name} LIKE '%SABRINA DIBYNIS%' THEN 'Sabrina Dibynis'
   WHEN ${ad_group_name} LIKE '%RAYANNE MENEZES%' THEN 'Rayanne Menezes'
   WHEN ${ad_group_name} LIKE '%VANDERLÉIA MARQUES%' THEN 'Vanderléia Marques'
   WHEN ${ad_group_name} LIKE '%PEDRO LOSS%' THEN 'Pedro Loss'
   WHEN ${ad_name} LIKE '%ANGÉLICA%' THEN 'Angélica'
   WHEN ${ad_name} LIKE '%LUIZA CORREA%' THEN 'Luiza Correa'
   WHEN ${ad_name} LIKE '%GIOVANA%' THEN 'Giovana'
   WHEN ${ad_name} LIKE '%GABRIEL%' THEN 'Gabriel'
        END ;;
  }

  dimension: combined_video_metric_names {
    type: string
    sql: 'video_views_p100, video_views_p25, video_views_p50, video_views_p75, video_watched_6s' ;;
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

  dimension: video_whatched_6s {
    type: number
    sql: ${TABLE}.  VIDEO_WATCHED_6S ;;
  }


  measure: count {
    type: count
    drill_fields: [advertiser_name, ad_group_name, campaign_name]
  }
}
