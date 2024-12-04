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
              WHEN ${ad_group_name} LIKE  '%LINDA%' OR ${ad_name} LIKE '%Linda%' THEN 'Linda Lis'
              WHEN ${ad_group_name} LIKE '%JADE%' THEN 'Jade'
              WHEN ${ad_group_name} LIKE '%JHESSICA%' OR ${ad_name} LIKE '%Jeh Macedo%' OR ${ad_name} LIKE '%Jhessica%'THEN 'Jhessica Macedo'
              WHEN ${ad_group_name} LIKE '%KARINA%' OR ${ad_name} LIKE '%Karina%' THEN 'Luiz e Karina'
              WHEN ${ad_group_name} LIKE '%THAUANE ALVES%' OR ${ad_name} LIKE '%Thauane Alves%' OR ${ad_group_name} LIKE '%THAUANE%' THEN 'Thauane Alves'
              WHEN ${ad_group_name} LIKE '%BÁRBARA%' THEN 'Bárbara'
              WHEN ${ad_group_name} LIKE '%LIZIANE%' THEN 'Liziane'
              WHEN ${ad_group_name} LIKE '%ÍCARO BOMFIM%' OR ${ad_name} LIKE '%Icaro Bonfim%' THEN 'Ícaro Bomfim'
              WHEN ${ad_group_name} LIKE '%CLAUDIA LEITTE%' THEN 'Claudia Leitte'
              WHEN ${ad_group_name} LIKE '%ISADORA%' THEN 'Isadora'
              WHEN ${ad_group_name} LIKE '%GUIA DE SP%'  OR ${ad_name} LIKE '%Guia_de_SP%' OR ${ad_name} LIKE '%Guia de SP%' THEN 'Guia de SP'
              WHEN ${ad_group_name} LIKE '%BRUNO CORREA%' or ${ad_name} LIKE '%Bruno Correa%' THEN 'Bruno Correa'
              WHEN ${ad_name} LIKE '%larissa%'or ${ad_group_name} LIKE '%LARISSA%' THEN 'Larissa'



      END ;;
  }

  dimension: total_seguidores {
    type: number
    sql: CASE
            WHEN ${influenciador} = 'Bruno Correa' THEN 2144833
            WHEN ${influenciador} = 'Ícaro Bomfim' THEN 578676
            WHEN ${influenciador} = 'Guia de SP' THEN 150499
            -- Adicione outras condições conforme necessário
            ELSE NULL
         END ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
