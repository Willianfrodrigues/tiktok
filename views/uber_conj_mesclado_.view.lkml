view: uber_conj_mesclado_ {
  sql_table_name: `looker-integrations-402615.tiktok_ads.Uber conj mesclado ` ;;

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

  dimension: landing_page_views {
    type: number
    sql: ${TABLE}.LANDING_PAGE_VIEWS ;;
  }

  dimension: influenciador {
    type: string
    sql: CASE

          WHEN ${ad_name} LIKE '%BÁRBARA COURA %'OR ${ad_name} LIKE '%Barbara Coura%' THEN'Bárbara Coura'
          WHEN ${ad_name} LIKE '%LUÍSA SOARES%' OR ${ad_name} LIKE '%Lu Soares%' THEN 'Luísa Soares'
          WHEN ${ad_name} LIKE '%RAND MARINHO%' OR ${ad_name} LIKE '%Rand%' THEN 'Rand Marinho'
          WHEN ${ad_name} LIKE '%RENATA MABA%' OR ${ad_name} LIKE '%Renata Ma%' THEN 'Renata Maba'
          WHEN ${ad_name} LIKE '%ISA SCHERER%' OR ${ad_name} LIKE '%Isa Scherer%' THEN 'Isa Scherer'
          WHEN ${ad_name} LIKE '%MARIANA PAIXÃO%' OR ${ad_name} LIKE '%Mariana%' THEN 'Mariana Paixão'
          WHEN ${ad_name} LIKE '%ÍCARO BOMFIM%' OR ${ad_name} LIKE '%Icaro Bonfim%' THEN 'Ícaro Bomfim'
          WHEN ${ad_name} LIKE '%JU MENEZES%' OR ${ad_name} LIKE '% Ju Menezes%' THEN 'Ju Menezes'
          WHEN ${ad_name} LIKE '%ANA FERREIRA%' OR ${ad_name} LIKE '%Ana Ferreira%' THEN 'Ana Ferreira'
          WHEN ${ad_name} LIKE '%LINDA LIS%' OR ${ad_name} LIKE '%Linda Lis%' THEN 'Linda Lis'
          WHEN ${ad_name} LIKE '%JULIA PIOLTI%' OR ${ad_name} LIKE '%Julia Piolti%' THEN 'Julia Piolti'
          WHEN ${ad_name} LIKE '%BARBARA COURA%' OR ${ad_name} LIKE '%Barbara Coura%' THEN 'Barbara Coura'
          WHEN ${ad_name} LIKE '%BRUNO FERREIRA%' OR ${ad_name} LIKE '%Bruno Ferreira%' THEN 'Bruno Ferreira'
          WHEN ${ad_name} LIKE '%THAYNA DIAS%' OR ${ad_name} LIKE '%Thayna Dias%' THEN 'Thayna Dias'

          WHEN ${ad_name} LIKE '%LU GUIMARÃES%' OR ${ad_name} LIKE '%Lu Guimarães%' THEN 'Lu Guimarães'
          WHEN ${ad_name} LIKE '%LUISA SOARES%' OR ${ad_name} LIKE '%Luisa Soare%' THEN 'Luisa Soares'











      END ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
