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
          WHEN ${campaign_name} LIKE 'WELLA | META | VIEWS | SOFT COLOR' OR ${campaign_name} LIKE 'WELLA | META | TRÁFEGO | SOFT COLOR' THEN 'Wella | Soft Color'
          WHEN ${campaign_name} LIKE '%GARDASIL%' THEN 'MSD Gardasil | 2024'
          WHEN ${campaign_name} LIKE '%LIMPANNO%' OR ${campaign_name} LIKE '%Limpanno%'  THEN 'Limpanno'
          WHEN ${campaign_name} LIKE '%NIOXIN%' THEN 'Wella Nioxin'
          WHEN ${campaign_name} LIKE '%CARE%' THEN 'Wella Care'
          WHEN ${campaign_name} LIKE '%WELLA | META | TRÁFEGO | RMKT SOFT COLOR%' THEN 'Wella | Soft Color Rmkt'
          WHEN ${campaign_name} LIKE '%COSTELATA%' THEN 'Costelata'
          WHEN ${campaign_name} LIKE '%STREPSILS%' THEN 'Strepsils'


          ELSE 'Outra Campanha'
      END ;;
  }



  dimension: Impressoes_contratadas{
    type: number
    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN 4000000
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 6666667
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 9629630
        WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' THEN 8245481
        WHEN ${Campanhas_fort} = 'Wella | Soft Color' THEN 21851852
        WHEN ${Campanhas_fort} = 'Limpanno' THEN 4185201
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN 33333333
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN 1444444
        WHEN ${Campanhas_fort} = 'Wella Care' THEN 2222222
        ELSE 1
      END ;;
  }

  dimension: cpm_contratado{
    type: number
    sql: CASE
         WHEN ${Campanhas_fort} = 'Needs Baby' THEN 27
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 30
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 27
        WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' THEN 27
        WHEN ${Campanhas_fort} = 'Wella | Soft Color' THEN 27
        WHEN ${Campanhas_fort} = 'Limpanno' THEN 45
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN 60
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN 27
        WHEN ${Campanhas_fort} = 'Wella Care' THEN 27
        ELSE 1
      END ;;
  }

  dimension: PI{
    type: number
    sql: CASE
         WHEN ${Campanhas_fort} = 'Needs Baby' THEN 108000
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN 200000
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN 260000
        WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' THEN  222628
        WHEN ${Campanhas_fort} = 'Wella | Soft Color' THEN  590000
        WHEN ${Campanhas_fort} = 'Limpanno' THEN 188334
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN  2000000
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN 39000
        WHEN ${Campanhas_fort} = 'Wella Care' THEN 60000
        ELSE 0
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
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN  0.17
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN 0.15
        WHEN ${Campanhas_fort} = 'Wella Care' THEN 0.15

        ELSE 0.15
       END ;;
  }




  dimension: fim_campanha {
    type: date

    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN '2024-05-25'
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN '2024-07-09'
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN '2024-06-30'
        WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' THEN '2024-06-30'
        WHEN ${Campanhas_fort} = 'Wella | Soft Color' THEN '2024-06-30'
        WHEN ${Campanhas_fort} = 'Limpanno' THEN '2024-08-12'
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN '2024-11-30'
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN '2024-06-30'
        WHEN ${Campanhas_fort} = 'Wella Care' THEN '2024-06-30'
        ELSE '2024-06-22'
      END ;;
  }

  dimension: Inicio_campanha {
    type: date

    sql: CASE
        WHEN ${Campanhas_fort} = 'Needs Baby' THEN '2024-03-27'
        WHEN ${Campanhas_fort} = 'StanleysHair' THEN '2024-04-11'
        WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' THEN '2024-02-01'
        WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' THEN '2024-01-02'
        WHEN ${Campanhas_fort} = 'Wella | Soft Color' THEN '2024-02-01'
        WHEN ${Campanhas_fort} = 'Limpanno' THEN '2024-05-15'
        WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' THEN '2024-03-01'
        WHEN ${Campanhas_fort} = 'Wella Nioxin' THEN '2024-05-20'
        WHEN ${Campanhas_fort} = 'Wella Care' THEN '2024-05-27'
        ELSE '2024-06-22'
      END ;;
  }

#------------------------------------------TESTES------------------------------

  dimension: PI2 {
    type: number
    sql: CASE
           WHEN ${Campanhas_fort} = 'Needs Baby' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 108000
           WHEN ${Campanhas_fort} = 'StanleysHair' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 200000
           WHEN ${Campanhas_fort} = 'Wella - Koleston Nemesis' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 260000
           WHEN ${Campanhas_fort} = 'Wella | Education (3º Flight)' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 222628
           WHEN ${Campanhas_fort} = 'Wella | Soft Color' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 590000
           WHEN ${Campanhas_fort} = 'Limpanno' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 188334
           WHEN ${Campanhas_fort} = 'MSD Gardasil | 2024' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 2000000
           WHEN ${Campanhas_fort} = 'Wella Nioxin' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 39000
           WHEN ${Campanhas_fort} = 'Wella Care' AND DATE_TRUNC('month', ${date_date}) = '2024-01-01' THEN 60000
           ELSE 0
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
