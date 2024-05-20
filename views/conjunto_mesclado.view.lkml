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
          WHEN ${campaign_name} LIKE '%LIMPPANO%' THEN 'Limpanno'
      END ;;
  }

  dimension: dias_campanha {
    type: number
    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN 30 // Substitua 30 pelo número real de dias da campanha 'Needs Baby'
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 45 // Substitua 45 pelo número real de dias da campanha 'StanleysHair'
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 60 // e assim por diante para cada campanha
        // Adicione mais condições para outras campanhas
        ELSE NULL
      END ;;
  }

  dimension: media_impressoes_realizadas {
    type: number
    sql: AVG(${TABLE}.impressoes) ;;
    value_format_name: decimal_2
  }

  measure: media_impressoes_previstas {
    type: number
    sql: ${total_impressions} / ${dias_campanha} ;;
    value_format_name: decimal_2
  }

  measure: comparacao_media {
    type: number
    sql: CASE WHEN ${media_impressoes_previstas} != 0 THEN ${media_impressoes_realizadas} / ${media_impressoes_previstas} ELSE NULL END ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
