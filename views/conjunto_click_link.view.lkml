view: conjunto_click_link {
  sql_table_name: `looker-integrations-402615.tiktok_ads.Conjunto_click_link` ;;

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AD_GROUP_NAME ;;
  }
  dimension: ad_name {
    type: string
    sql: ${TABLE}.AD_NAME ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.CREATIVE_NAME ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
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

  dimension: influenciador {
    type: string
    sql: CASE

              WHEN ${ad_group_name} LIKE '%ANA LUIZA%' OR ${ad_name} LIKE '%Ana Luiza%'  THEN 'Ana Luiza'
              WHEN ${ad_group_name} LIKE '%CELSO ZUCATELLI %' OR ${ad_name} LIKE '%Celso Zucatelli%' THEN 'Celso Zucatelli'
              WHEN ${ad_group_name} LIKE  '%LINDA%' OR ${ad_name} LIKE '%Linda%' THEN 'Linda lis'
              WHEN ${ad_group_name} LIKE '%JADE%' THEN 'Jade'
              WHEN ${ad_group_name} LIKE '%JHESSICA%' OR ${ad_name} LIKE '%Jeh Macedo%' OR ${ad_name} LIKE '%Jhessica%'THEN 'Jhessica Macedo'
              WHEN ${ad_group_name} LIKE '%KARINA%' OR ${ad_name} LIKE '%Karina%' THEN 'Luiz e Karina'
              WHEN ${ad_group_name} LIKE '%THAUANE ALVES%' OR ${ad_name} LIKE '%Thauane Alves%' OR ${ad_group_name} LIKE '%THAUANE%' THEN 'Thauane Alvez'



      END ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
