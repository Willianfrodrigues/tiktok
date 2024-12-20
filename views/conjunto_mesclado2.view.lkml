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
       WHEN ${ad_name} LIKE '%VIVI CAKE%' OR ${ad_name} LIKE '%Vivi Cake%' THEN 'Vivi Cake'
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
      WHEN ${ad_name} LIKE  '%MIRELLE MOSCHELLA%' OR ${ad_name} LIKE '%Mirelle Moschella%' THEN 'Mirelle Moschella'
      WHEN ${ad_name} LIKE  '%VIVIAN AMORIM%' OR ${ad_name} LIKE '%Vivian Amorim%' THEN 'Vivian Amorim'
      WHEN ${ad_name} LIKE  '%ORNELLA%' OR ${ad_name} LIKE '%Ornella%' THEN 'Ornella'
      WHEN ${ad_name} LIKE  '%MARCELA%' OR ${ad_name} LIKE '%Marcela%' THEN 'Marcela'
      WHEN ${ad_name} LIKE  '%ALINE CAMPOS%' OR ${ad_name} LIKE '%Aline Campos%' THEN 'Aline Campos'
      WHEN ${ad_name} LIKE  '%LIDI LISBOA %' OR ${ad_name} LIKE '%Lidi Lisboa%' THEN 'Lidi Lisboa'
      WHEN ${ad_name} LIKE  '%MIRELLE MOSCHELLA%' OR ${ad_name} LIKE '%Mirelle Moschella%' THEN 'Mirelle Moschella'
      WHEN ${ad_name} LIKE '%ANA LUIZA%' THEN 'Ana Luiza'
      WHEN ${ad_name} LIKE '%CELSO ZUCATELLI %' THEN 'Celso Zucatelli'
      WHEN ${ad_name} LIKE  '%LINDA LIS%' OR ${ad_name} LIKE '%Linda lis%' THEN 'Linda lis'
      WHEN ${ad_name} LIKE '%JADE%' THEN 'Jade'
      WHEN ${ad_name} LIKE '%NICOLE%' OR ${ad_group_name} LIKE '%NICOLE%' THEN 'Nicole'
      WHEN ${ad_name} LIKE '%MARIANA%' OR ${ad_group_name} LIKE '%MARIANA%' THEN 'Mariana'
      WHEN ${ad_name} LIKE '%DRA THAIS%' OR ${ad_group_name} LIKE '%DRA. THAIS%' THEN 'Dra Thais'
      WHEN ${ad_name} LIKE '%PODDELAS%' THEN 'Poddelas'
      WHEN ${ad_name} LIKE '%Cleo Pires%' OR ${ad_name} LIKE '%CLÉO PIRES%' OR ${ad_group_name} LIKE '%CLÉO PIRES%' THEN 'Cléo Pires'
      WHEN ${ad_name} LIKE  '%BRU TAI LOPES%' OR ${ad_name} LIKE '%Bru Tai Lopes%' THEN 'Bru Tai Lopes'
      WHEN ${ad_name} LIKE  '%MA TRANCHES%' OR ${ad_name} LIKE '%Ma Tranches%' THEN 'Ma Tranches'
      WHEN ${ad_name} LIKE  '%DR DIEGO DI MARCO%' OR ${ad_name} LIKE '%DR DIEGO DI%' THEN 'Dr. Diego Di Marco'
      WHEN ${ad_name} LIKE  '%DRA LILIAN%' OR ${ad_name} LIKE '%DRA LILIAN%' THEN 'Dra. Lilian'
      WHEN ${ad_name} LIKE '%ANNA EGREJA%' THEN 'Anna Egreja'
      WHEN ${ad_name} LIKE '%MARIA EUGENIA%' THEN 'Maria Eugenia'
      WHEN ${ad_name} LIKE '%THASSIA NAVES%' THEN 'Thassia Naves'
      WHEN ${ad_name} LIKE '%CONSUELO BLOCKER%'  THEN 'Consuelo Blocker'
      WHEN ${ad_name} LIKE '%JANAELE LIMA%' OR ${ad_name} LIKE '%Michele_Crispim%' OR ${ad_name} LIKE '%Michele Crispim%' THEN 'Consuelo Blocker'
      WHEN ${ad_name} LIKE '%MICHELE CRISPIM%' OR ${ad_name} LIKE '%Janaele Lima%' OR ${ad_name} LIKE '%Janaele_Lima%' THEN 'Consuelo Blocker'
      WHEN ${ad_name} LIKE '%RAFAEL FERRARI%' THEN 'Rafael Ferrari'
      WHEN ${ad_name} LIKE '%HENRY HATAKEYAMA%' THEN 'Henry Hatakeyama'
      WHEN ${ad_name} LIKE '%THAIS FIGUEIREDO%' THEN 'Thais Figueiredo'
      WHEN ${ad_name} LIKE '%GI SAYURI%' THEN 'Gi Sayuri'
      WHEN ${ad_name} LIKE '%VERI YAMAZOE%' THEN 'Veri Yamazoe'
      WHEN ${ad_name} LIKE '%GABRIELA CASTRO%' OR ${ad_name} LIKE '%Gabriela%' THEN 'Gabriela Castro'
      WHEN ${ad_name} LIKE '%LEO%' OR ${ad_name} LIKE '%Leo%' THEN 'Leo'
      WHEN ${ad_name} LIKE '%BIANCA FERNANDES%' OR ${ad_name} LIKE '%Bianca%' THEN 'Bianca Fernandes'
      WHEN ${ad_name} LIKE '%DRA VIVIAN%%' THEN 'Dra. Viviane Monteiro'

              END ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${TABLE}.IMPRESSIONS ;;
  }



  measure: impressoes_ajustadas_marcela {
    type: sum
    sql: CASE
         WHEN ${campaign_name} = '%Crossmedia | MSD%' AND
              ${date_date} = '2024-11-30' AND
              ${platform} = 'Google DV360' AND
              ${influenciador} = '%Marcela%'
         THEN ${impressions} + 300000
         ELSE ${impressions}
       END ;;
  }

  dimension: impressions_adjusted {
    type: number
    sql: CASE
        WHEN ${campaign_name} = 'Crossmedia | MSD | Consideracao | Gardasil'
         AND ${date_date} = '2024-11-30'
         AND ${influenciador} = 'Marcela'
         AND ${ad_group_name} = 'MSD | WLS | Saude'
         AND ${ad_name} = 'MSD | Gardasil | Consideracao | Marcela McGowan | 320x100 | Crossmedia'
        THEN ${impressions} + 300249
        ELSE ${impressions}
      END ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
