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
           WHEN ${ad_name} LIKE '%BRINO%' OR  ${ad_name} LIKE '%Brino%' THEN 'Brino'

          WHEN ${ad_name} LIKE '%BÁRBARA COURA %'OR ${ad_name} LIKE '%Barbara Coura%' THEN'Barbara Coura'
          WHEN ${ad_name} LIKE '%LUÍSA SOARES%' OR ${ad_name} LIKE '%Lu Soares%' THEN 'Luísa Soares'
          WHEN ${ad_name} LIKE '%RAND MARINHO%' OR ${ad_name} LIKE '%Rand%' THEN 'Rand Marinho'
          WHEN ${ad_name} LIKE '%RENATA MABA%' OR ${ad_name} LIKE '%Renata Ma%' THEN 'Renata Maba'
          WHEN ${ad_name} LIKE '%ISA SCHERER%' OR ${ad_name} LIKE '%Isa Scherer%' THEN 'Isa Scherer'
          WHEN ${ad_name} LIKE '%MARIANA PAIXÃO%' OR ${ad_name} LIKE '%Mariana%' THEN 'Mariana Paixão'
          WHEN ${ad_name} LIKE '%ÍCARO BOMFIM%' OR ${ad_name} LIKE '%Icaro Bonfim%' OR ${ad_name} LIKE '%icaro Bomfim %' THEN 'Ícaro Bomfim'
          WHEN ${ad_name} LIKE '%JU MENEZES%' OR ${ad_name} LIKE '%Ju Menezes%' THEN 'Juliana Menezes'
          WHEN ${ad_name} LIKE '%ANA FERREIRA%' OR ${ad_name} LIKE '%Ana Ferreira%' THEN 'Ana Ferreira'
          WHEN ${ad_name} LIKE '%LINDA LIS%' OR ${ad_name} LIKE '%Linda Lis%' THEN 'Linda Lis'
          WHEN ${ad_name} LIKE '%JULIA PIOLTI%' OR ${ad_name} LIKE '%Julia Piolti%' THEN 'Julia Piolti'
          WHEN ${ad_name} LIKE '%BARBARA COURA%' OR ${ad_name} LIKE '%Barbara Coura%' THEN 'Barbara Coura'
          WHEN ${ad_name} LIKE '%BRUNO FERREIRA%' OR ${ad_name} LIKE '%Bruno Ferreira%' THEN 'Bruno Ferreira'
          WHEN ${ad_name} LIKE '%THAYNA DIAS%' OR ${ad_name} LIKE '%Thayna Dias%' OR ${ad_name} LIKE '%Thayna_Dias%' THEN 'Thayna Dias'
          WHEN ${ad_name} LIKE '%LU GUIMARÃES%' OR ${ad_name} LIKE '%Guimaraes%' THEN 'Lu Guimarães'
          WHEN ${ad_name} LIKE '%LUISA SOARES%' OR ${ad_name} LIKE '%Luisa Soare%' THEN 'Luisa Soares'
          WHEN ${ad_name} LIKE '%ANA SUPSUP%' OR ${ad_name} LIKE '%Ana Supsup%' THEN 'Ana Supsup'
          WHEN ${ad_name} LIKE '%ANANDA VASCONCELOS%' OR ${ad_name} LIKE '%Ananda%' THEN 'Ananda Vasconcelos'
          WHEN ${ad_name} LIKE '%FERNANDO LOURENÇO%' THEN 'Fernando Lourenço'
          WHEN ${ad_name} LIKE '%MELHORES AMIGOS%' THEN 'Melhores Amigos'
          WHEN ${ad_name} LIKE '%DEUSO GREGO%' THEN 'Deuso Grego'
          WHEN ${ad_name} LIKE '%JULIO ROCHA%' THEN 'Julio Rocha'
          WHEN ${ad_name} LIKE '%MARCOS LUCINDO%' OR ${ad_name} LIKE '%Marcos Lucindo%' THEN 'Marcos Lucindo'
         WHEN ${ad_name} LIKE '%JULIANA MEN%' OR ${ad_name} LIKE '%Juliana Menezes%' THEN 'Juliana Menezes'
         WHEN ${ad_name} LIKE '%CARAS%' OR ${ad_name} LIKE '%Caras%' THEN 'Caras'
         WHEN ${ad_name} LIKE '%MARIA ALICE%' OR ${ad_name} LIKE '%Maria Alice%' OR ${ad_name} LIKE '%Maria_Alice%' THEN 'Maria Alice'
         WHEN ${ad_name} LIKE '%FLAVIA DELL%' OR ${ad_name} LIKE '%Flavia Dell%' OR ${ad_name} LIKE '%Flavia_Dell%' THEN 'Flavia Dell'
         WHEN ${ad_name} LIKE '%LEPRINCE%' OR ${ad_name} LIKE '%Leprince%' THEN 'Leprince'
         WHEN ${ad_name} LIKE '%JHONATA TEIXEIRA%' OR ${ad_name} LIKE '%Jhonata Teixeira%' OR ${ad_name} LIKE '%Jhonata%' THEN 'Jhonata Teixeira'
         WHEN ${ad_name} LIKE '%SHOW DA XUXA%' OR ${ad_name} LIKE '%Show da xuxa%' THEN 'Show da Xuxa'
         WHEN ${ad_name} LIKE '%BRAZILIAN VERSION%' OR ${ad_name} LIKE '%Brazilian Version%' THEN 'Brazilian Version'
         WHEN ${ad_name} LIKE '%EDY RIOS%' OR ${ad_name} LIKE '%Edy Rios%' OR ${ad_name} LIKE '%Edy_Rios%' THEN 'Edy Rios'
         WHEN ${ad_name} LIKE '%ANA SUPSUP%' OR ${ad_name} LIKE '%Ana Supsup%' THEN 'Ana Supsup'
         WHEN ${ad_name} LIKE '%FRANCESCA%' OR ${ad_name} LIKE '%Francesca%' THEN 'Francesca'
         WHEN ${ad_name} LIKE '%PATI BIANCO%' OR ${ad_name} LIKE '%Pati Bianco%' THEN 'Pati Bianco'
         WHEN ${ad_name} LIKE '%THAI MIRANDA%' OR ${ad_name} LIKE '%Thai Miranda%' OR ${ad_name} LIKE "%Thai_Miranda%" THEN 'Thai Miranda'
         WHEN ${ad_name} LIKE '%GABI SELISTRE%' OR ${ad_name} LIKE '%Gabi Selistre%' OR ${ad_name} LIKE "%Gabi_Selistre%" THEN 'Gabi Selistre'
         WHEN ${ad_name} LIKE '%JADE COMERIA%' OR ${ad_name} LIKE '%Jade Comeria%'  THEN 'Jade Comeria'
         WHEN ${ad_name} LIKE '%Bruno Manoel%' OR ${ad_name} LIKE '%Bruno Manoel%' OR ${ad_name} LIKE '%BRUNO MANOEL%'  OR ${ad_name} LIKE '%Bruno_Manoel%' THEN 'Bruno Manoel'
         WHEN ${ad_name} LIKE '%Renata Maba%' OR ${ad_name} LIKE '%Renata_Maba%'  THEN 'Renata Maba'
         WHEN ${ad_name} LIKE '%CHEFE ALVARO%' OR ${ad_name} LIKE '%Chef Alvaro%' OR ${ad_name} LIKE '%CHEF ALVARO %' THEN 'Chefe Alvaro'
         WHEN ${ad_name} LIKE '%Tairine Ceuta%' OR ${ad_name} LIKE '%TAIRINE CEUTA%' OR ${ad_name} LIKE '%Tairine_Ceuta%' THEN 'Tairine Ceuta'
         WHEN ${ad_name} LIKE '%Dayane_Gechonke%' OR ${ad_name} LIKE '%DAYANE GECHONKE%' OR ${ad_name} LIKE '%Dayanne Gechonke%'  THEN 'Dayane Gechonke'
         WHEN ${ad_name} LIKE '%Jade Comeria%' THEN 'Jade Comeria'
         WHEN ${ad_name} LIKE '%Jobson Amancio%' OR ${ad_name} LIKE '%OBSON AMANCIO%' THEN 'Jobson Amancio'
         WHEN ${ad_name} LIKE '%JHONATA TEIXEIRA%' THEN 'Jhonata Teixeira'
         WHEN ${ad_name} LIKE '%Angela Ramo%' OR ${ad_name} LIKE '%ANGELA%' OR ${ad_name} LIKE '%Angela_Ramos%' THEN 'Angela Ramos'
         WHEN ${ad_name} LIKE '%LEO FECK%' OR ${ad_name} LIKE '%Leo Feck%' THEN 'Leo Feck'
         WHEN ${ad_name} LIKE '%CARLA%' OR ${ad_name} LIKE '%Carla%' THEN 'Carla'
         WHEN ${ad_name} LIKE '%REEH AUGUSTO%' OR ${ad_name} LIKE '%Reeh_Augusto%' OR ${ad_name} LIKE '%Reeh Augusto%' THEN 'Reeh Augusto'
      WHEN ${ad_name} LIKE '%MICHELE CRISPIM%' OR ${ad_name} LIKE '%Michele_Crispim%' OR ${ad_name} LIKE '%Michele Crispim%' THEN 'Michele Crispim'
      WHEN ${ad_name} LIKE '%JANAELE LIMA%' OR ${ad_name} LIKE '%Janaele Lima%' OR ${ad_name} LIKE '%Janaele_Lima%' THEN 'Janaele Lima'










      END ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
