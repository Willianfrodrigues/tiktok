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
          WHEN ${campaign_name} LIKE 'STANLEYS %' OR ${campaign_name} LIKE 'StanleysHair' THEN 'StanleysHair'
          WHEN ${campaign_name} LIKE '%NEMESIS%' THEN 'Wella - Koleston Nemesis'
          WHEN ${campaign_name} LIKE '%EDUCATION%' THEN 'Wella | Education (3º Flight)'
          WHEN ${campaign_name} LIKE '%SOFT COLOR%' THEN 'Wella | Soft Color'
          WHEN ${campaign_name} LIKE '%MSD | META | TRÁFEGO | HPV GARDASIL 9%' THEN 'MSD Gardasil | 2024'
          WHEN ${campaign_name} LIKE '%LIMPANNO%' OR ${campaign_name} LIKE '%Limpanno%'  THEN 'Limpanno'
          ELSE 'Outra Campanha'
      END ;;
  }



  dimension: Impressoes_contratadas{
    type: number
    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN 250000
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 365000
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 250000
        ELSE 1
      END ;;
  }

  dimension: cpm_contratado{
    type: number
    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN 60
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 40
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 25
        ELSE 1
      END ;;
  }



  #------------------------------------------TESTES------------------------------

  dimension: fim_campanha {
    type: date

    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN '2024-06-22'
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN '2024-06-22'
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN '2024-06-22'
        ELSE '2024-06-22'
      END ;;
  }

  dimension: Inicio_campanha {
    type: date

    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN '2024-05-24'
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN '2024-02-28'
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN '2024-03-20'
        ELSE '2024-06-22'
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
