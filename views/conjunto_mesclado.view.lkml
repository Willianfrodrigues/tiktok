view: conjunto_mesclado {
  sql_table_name: `looker-integrations-402615.tiktok_ads.Conjunto_mesclado` ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }
  dimension: origem {
    type: string
    sql: ${TABLE}.origem ;;
  }
  dimension: total_alcance {
    type: number
    sql: ${TABLE}.total_alcance ;;
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

  measure: impressoes {
    type: sum
    sql: ${TABLE}.total_impressions ;;
  }

  measure:  total_cadastros {
    type: sum
    sql: ${TABLE}.total_cadastros ;;
  }


  measure: cliques {
    type: sum
    sql: ${TABLE}.total_clicks ;;
  }

  measure: thruplay {
  type: sum
  sql: ${TABLE}.total_thruplay ;;
  }



  measure: alcance {
    type: sum
    sql: ${TABLE}.total_alcance ;;
  }

  measure: custo {
    type: sum
    sql: ${TABLE}.total_cost ;;
  }

  dimension: Campanhas_fort {
    type: string
    sql: CASE
          WHEN ${campaign_name} LIKE '%RAIA DROGASIL%' THEN 'Needs Baby'
          WHEN ${campaign_name} LIKE 'STANLEYS %' OR ${campaign_name} LIKE '%StanleysHair%' THEN 'StanleysHair'
          WHEN ${campaign_name} LIKE '%NEMESIS%' THEN 'Wella - Koleston Nemesis'
          WHEN ${campaign_name} LIKE '%EDUCATION%' THEN 'Wella | Education (3º Flight)'
          WHEN ${campaign_name} LIKE 'WELLA | META | VIEWS | SOFT COLOR' OR ${campaign_name} LIKE 'WELLA | META | TRÁFEGO | SOFT COLOR' OR ${campaign_name} LIKE "WELLA | TIKTOK | TRÁFEGO | SOFT COLOR" THEN 'Wella | Soft Color'
          WHEN ${campaign_name} LIKE '%GARDASIL%' THEN 'MSD Gardasil | 2024'
          WHEN ${campaign_name} LIKE '%LIMPANNO%' OR ${campaign_name} LIKE '%Limpanno%'  THEN 'Limpanno'
          WHEN ${campaign_name} LIKE '%NIOXIN%' THEN 'Wella Nioxin'
          WHEN ${campaign_name} LIKE '%CARE%' THEN 'Wella Care'
          WHEN ${campaign_name} LIKE '%WELLA | META | TRÁFEGO | RMKT SOFT COLOR%' THEN 'Wella | Soft Color Rmkt'
          WHEN ${campaign_name} LIKE '%COSTELATA%' OR ${campaign_name} LIKE '%Costelata%' THEN 'Costelata'
          WHEN ${campaign_name} LIKE '%STREPSILS%' THEN 'Strepsils'


          ELSE 'Outra Campanha'
      END ;;
  }


  dimension: percent_to_apply {
    type: number
    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN 0.15
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 0.15
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 0.15
        WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' THEN  0.15
        WHEN ${Campanhas_fort} = 'Wella | Soft Color' THEN  0.15
        WHEN ${Campanhas_fort} = 'Limpanno' THEN 0.15
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN  0.15
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN 0.15
        WHEN ${Campanhas_fort} = 'Wella | Soft Color Rmkt' THEN 0.15
        WHEN ${Campanhas_fort} = 'Costelata' THEN 0.15
        WHEN ${Campanhas_fort} = 'Strepsils' THEN 0.15
        ELSE 0.15
       END ;;
  }



  measure: max_date_date {
    type: date
    sql: MAX(${date_date}) ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
