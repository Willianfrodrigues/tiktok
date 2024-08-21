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
        WHEN ${ad_name} LIKE '%TIAGO%' THEN 'Tiago'
        WHEN ${ad_name} LIKE '%MARCIO%' THEN 'Marcio'
        WHEN ${ad_name} LIKE '%Tiago%' THEN 'Tiago'
        WHEN ${ad_name} LIKE '%Debora%' THEN 'Debora'
       WHEN ${ad_name} LIKE '%Danna%' THEN 'Danna'
       WHEN ${ad_name} LIKE '%GIO EWBANK%' OR ${ad_name} LIKE '%gio-ewbank%' THEN 'Gio Ewbank'
       WHEN ${ad_name} LIKE '%VIVI CAKE%' THEN 'Vivi Cake'
       WHEN ${ad_name} LIKE '%GIOVANNA%' THEN 'Giovanna'
       WHEN ${ad_name} LIKE '%GUI TAKAHASHI%' THEN 'Gui Takahashi'
       WHEN ${ad_name} LIKE '%VIC MIRANDA%' THEN 'Vic Miranda'
       WHEN ${ad_name} LIKE '%LUIZA SOBRAL%' THEN 'Luiza Sobral'
       WHEN ${ad_name} LIKE '%RITA CARREIRA%' THEN 'Rita Carreira'
      WHEN ${ad_name} LIKE '%DAYANNE%' THEN 'Dayanne'
      WHEN ${ad_name} LIKE '%NAT DEUSDARÁ%' THEN 'Nat Deusdará'
      WHEN ${ad_name} LIKE '%BIANCA DARRUIZ%' THEN 'Bianca Darruiz'
      WHEN ${ad_name} LIKE '%LAURA LEÃO%' THEN 'Laura Leão'
      WHEN ${ad_name} LIKE '%TABATA%'  THEN 'Tabata'
      WHEN ${ad_name} LIKE '%URSULA%'  THEN 'Ursula'
      WHEN ${ad_name} LIKE '%MARCIO%' THEN 'Marcio'
      WHEN ${ad_name} LIKE  '%Tabata%' THEN 'Tabata'
      WHEN ${ad_name} LIKE  '%Ursula%' THEN 'Ursula'
      WHEN ${ad_name} LIKE  '%Marcio%' THEN 'Marcio'
      WHEN ${ad_name} LIKE  '%LUANA%' OR ${ad_name} LIKE '%Luana%' THEN 'Luana'
      WHEN ${ad_name} LIKE  '%APTO 303%' OR ${ad_name} LIKE '%Apto 303%' THEN 'APTO 303'
      WHEN ${ad_name} LIKE  '%KARINE%' OR ${ad_name} LIKE '%Karine%'THEN 'Karine'
      WHEN ${ad_name} LIKE  '%VANESSA%' OR ${ad_name} LIKE '%Vanessa%' THEN 'Vanessa'
      WHEN ${ad_name} LIKE  '%Erika Januza%' OR ${ad_name} LIKE '%ERIKA JANUZA%' THEN 'Erika Januz'
      WHEN ${ad_name} LIKE  '%MIRELLE MOSCHELLA%' OR ${ad_name} LIKE '%Mirelle Moschella%' THEN ''
      WHEN ${ad_name} LIKE  '%VIVIAN AMORIM%' OR ${ad_name} LIKE '%Vivian Amorim%' THEN 'Vivian Amorim'
      WHEN ${ad_name} LIKE  '%ORNELLA%' OR ${ad_name} LIKE '%Ornella%' THEN 'Ornella'
      WHEN ${ad_name} LIKE  '%%' OR ${ad_name} LIKE '%%' THEN ''
      WHEN ${ad_name} LIKE  '%%' OR ${ad_name} LIKE '%%' THEN ''


              END ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
