view: conjunto_mesclado2 {
  sql_table_name: `looker-integrations-402615.tiktok_ads.conjunto_mesclado2` ;;

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
  dimension: clicks {
    type: number
    sql: ${TABLE}.CLICKS ;;
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
  dimension: impressions {
    type: number
    sql: ${TABLE}.IMPRESSIONS ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: thruplay {
    type: number
    sql: ${TABLE}.THRUPLAY ;;
  }

  dimension: influenciador {
    type: string
    sql: CASE

        WHEN ${ad_group_name} LIKE '%LUIZA%' THEN 'Luiza'
        WHEN ${ad_name} LIKE '%Care%' THEN 'Care'
         WHEN ${ad_name} LIKE '%DEBORA%' THEN 'Debora'
        WHEN ${ad_name} LIKE '%TIAGO GONÇALVES%' THEN 'Thiago Gonçalves'
        WHEN ${ad_name} LIKE '%MARCIO%' THEN 'Marcio'
        WHEN ${ad_name} LIKE '%Tiago%' THEN 'Tiago DV'
        WHEN ${ad_name} LIKE '%Debora%' THEN 'Debora DV'
       WHEN ${ad_name} LIKE '%Danna%' THEN 'Danna DV'





              END ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
