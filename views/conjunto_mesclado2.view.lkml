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

  dimension: clicks_no_link {
    type: number
    sql: ${TABLE}.CLICKS_LINK ;;
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
    sql: COALESCE(${TABLE}.IMPRESSIONS, 0) ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: thruplay {
    type: number
    sql: ${TABLE}.THRUPLAY ;;
  }

  dimension: impressao_ajustada {
    type: number
    sql: CASE
        WHEN ${TABLE}.CAMPAIGN_NAME LIKE '%PHILCO%'
             AND CAST(${TABLE}.date AS date) = '2024-12-11' THEN ROUND(${TABLE}.IMPRESSIONS * 0.5)
        WHEN ${TABLE}.CAMPAIGN_NAME LIKE 'SKALA | AWARENESS | MP'
             AND CAST(${TABLE}.date AS date) BETWEEN '2025-01-15' AND '2025-02-28' THEN ROUND(${TABLE}.IMPRESSIONS * 1.007611)
        ELSE ROUND(${TABLE}.IMPRESSIONS)
    END ;;
  }



  dimension: influenciador {
    type: string
    sql: CASE

           WHEN ${ad_name} LIKE '%THIAGO CORDOVA%' OR  ${ad_name} LIKE '%Thiago%' THEN 'Thiago'
           WHEN ${ad_name} LIKE '%CAROL E NATI%' OR  ${ad_name} LIKE '%Carol e Nati%' THEN 'Carol e Nati'
           WHEN ${ad_name} LIKE '%YASMIN AKUTSU%' OR  ${ad_name} LIKE '%Yasmin Akutsu%' THEN 'Yasmin Akutsu'
           WHEN ${ad_name} LIKE '%SAPATOKERS%' OR  ${ad_name} LIKE '%Sapatokers%' THEN 'Sapatokers'
           WHEN ${ad_name} LIKE '%AMANDA MOTA%' OR  ${ad_name} LIKE '%Amanda Mota%' THEN 'Amanda Mota'
           WHEN ${ad_name} LIKE '%AMANDA COUTINHO%' OR  ${ad_name} LIKE '%Amanda Coutinho%' THEN 'Amanda Coutinho'
           WHEN ${ad_name} LIKE '%MAYARA RODRIGUES%' OR  ${ad_name} LIKE '%Maiara Rodrigues%' THEN 'Mayara Rodrigues'
           WHEN ${ad_name} LIKE '%WENDELL ALE%' OR  ${ad_name} LIKE '%Wendell Alexandre%' THEN 'Wendell Alexandre'
           WHEN ${ad_name} LIKE '%DANIEL MARIANO%' OR  ${ad_name} LIKE '%Daniel Mariano%' THEN 'Daniel Mariano'
           WHEN ${ad_name} LIKE '%MABI MOREIRA%' OR  ${ad_name} LIKE '%Mabi Moreira%' THEN 'Mabi Moreira'

          WHEN ${ad_name} LIKE '%FLÁVIA LEAL%' OR ${ad_name} LIKE '%FLAVIA LEAL%' OR ${ad_name} LIKE '%Flavia Leal%' THEN 'Flavia Leal'
           WHEN ${ad_name} LIKE '%MAITÊ VOLPINI%' THEN 'Ale Kremer'
           WHEN ${ad_name} LIKE '%FRAN REZENDE%' OR ${ad_name} LIKE '%Fran Rezende%' THEN 'Fran Rezende'
           WHEN ${ad_name} LIKE '%DUDA RIEDEL%' OR ${ad_name} LIKE '%Duda Riedel%' THEN 'Duda Riedel'
           WHEN ${ad_name} LIKE '%CAROLINA LEAL%' THEN 'Carolina Leal'
           WHEN ${ad_name} LIKE '%GABI MAGSAN%' OR  ${ad_name} LIKE '%Gabi Magsan%' THEN 'Gabi Magsan'
          WHEN ${ad_name} LIKE '%NINA GABRIELLA%' OR ${ad_name} LIKE '%NINA GABRIELA%' OR ${ad_name} LIKE '%Nina Gabriela%'   THEN 'Nina Gabriella'
          WHEN ${ad_name} LIKE '%Ale Kremer%' THEN 'Ale Kremer'
          WHEN ${ad_name} LIKE '%MANU XAVIER%' THEN 'Manu Xavier'
          WHEN ${ad_name} LIKE '%MYLLENA DALLA%' THEN 'Myllena Dalla'
          WHEN ${ad_name} LIKE '%Flavia Charallo%' THEN 'Flavia Charallo'
          WHEN ${ad_name} LIKE '%ANANDA%' OR ${ad_name} LIKE '%Ananda%' THEN 'Ananda'
          WHEN ${ad_name} LIKE '%ANANDA%' THEN 'Ananda'
          WHEN ${ad_name} LIKE '%MARI KRUGER%' THEN 'Mari kruger'
          WHEN ${ad_name} LIKE '%DRA. LILIAN%' THEN 'Dra. Lilian'
          WHEN ${ad_name} LIKE '%ALE KREMER%' THEN 'Ale Kremer'
          WHEN ${ad_name} LIKE '%MARIANA XAVIER%' THEN 'Mariana Xavier'
          WHEN ${ad_name} LIKE '%GABRIELA DOMINGUES%' THEN 'Gabriela Domingues'
          WHEN ${ad_name} LIKE '%FLÁVIA CHARALLO%' THEN 'Flávia Charallo'
          WHEN ${ad_group_name} LIKE '%JACKSON%' THEN 'Jackson'
          WHEN ${ad_group_name} LIKE '%FE MEDEIROS%' THEN 'Fe Medeiros'
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

          WHEN ${ad_name} LIKE '%Maite Volpini%' OR ${ad_name} LIKE '%MAITE VOLPINI%' THEN 'Maite Volpini'

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
      WHEN ${ad_name} LIKE '%BIA OLIVEIRA%' THEN 'Bia Oliveira'
      WHEN ${ad_name} LIKE '%GABRIELA%' THEN 'Gabriela'
      WHEN ${ad_name} LIKE '%LIZIANE%' THEN 'Liziane'
      WHEN ${ad_name} LIKE '%BRUNA VIEIRA%' THEN 'Bruna Vieira'
      WHEN ${ad_name} LIKE '%ELLORA HAONNE%' THEN 'Ellora Haonne'
      WHEN ${ad_name} LIKE '%SHANTAL%' THEN 'Shantal'
      WHEN ${ad_name} LIKE '%FLAVIA DELL%' THEN 'Flavia Dell'
      WHEN ${ad_name} LIKE '%Mais cachos%' THEN 'Mais cachos'
      WHEN ${ad_name} LIKE '%Crespo Divino%' THEN 'Crespo Divino'
      WHEN ${ad_name} LIKE '%BÁRBARA %' THEN 'Bárbara'
      WHEN ${ad_name} LIKE '%FRANCESCA%' THEN 'Francesca'
      WHEN ${ad_name} LIKE '%BRUNO CORREA%' OR ${ad_name} LIKE '%Bruno Correa%'  THEN 'Bruno Correa'
      WHEN ${ad_name} LIKE '%CLAUDIA LEITTE%' THEN 'Claudia Leitte'
      WHEN ${ad_name} LIKE '%ISADORA%' THEN 'Isadora'
      WHEN ${ad_name} LIKE '%VERI YAMAZOE%' THEN 'Veri Yamazoe'
      WHEN ${ad_name} LIKE '%NANNOCA%' THEN 'Nannoca'
      WHEN ${ad_name} LIKE '%GABRIELA CASTRO%' OR ${ad_name} LIKE '%Gabriela%' THEN 'Gabriela Castro'
      WHEN ${ad_name} LIKE '%LEO%' OR ${ad_name} LIKE '%Leo%' THEN 'Leo'
      WHEN ${ad_name} LIKE '%BIANCA FERNANDES%' OR ${ad_name} LIKE '%Bianca%' THEN 'Bianca Fernandes'
      WHEN ${ad_name} LIKE '%DRA VIVIAN%%' THEN 'Dra. Viviane Monteiro'
      WHEN ${ad_name} LIKE '%BRUH FERREYRA%' OR ${ad_name} LIKE '%Bruh%' OR ${ad_name} LIKE '%BRU FERREYRA%' THEN 'Bruh Ferreira'
      WHEN ${ad_name} LIKE '%DAVI DANIEL%' OR ${ad_name} LIKE '%Davi%' THEN 'Davi Daniel'
      WHEN ${ad_name} LIKE '%IGOR%' OR ${ad_name} LIKE '%Igor%' THEN 'Igor Saringer'
      WHEN ${ad_name} LIKE '%JESS%' OR ${ad_name} LIKE '%Jess%' THEN 'Jessica'
      WHEN ${ad_name} LIKE '%THAIS%' OR ${ad_name} LIKE '%Thais%' THEN 'Thais'
      WHEN ${ad_name} LIKE '%MATHEUS%' OR ${ad_name} LIKE '%Matheus%' THEN 'Matheus'
      WHEN ${ad_name} LIKE '%JULIA ALVES%' OR ${ad_name} LIKE '%Julia Alves%' THEN 'Julia Alves'
      WHEN ${ad_name} LIKE '%MAYARA RODRIGUES%' OR ${ad_name} LIKE '%Mayara Rodrigues%' THEN 'Mayara Rodrigues'
      WHEN ${ad_name} LIKE '%STHEFANY VITORIA%' OR ${ad_name} LIKE '%Sthefany Vitoria%' THEN 'Sthefany Vitoria'
      WHEN ${ad_name} LIKE '%BIANCA OLIVEIRA%' OR ${ad_name} LIKE '%Bianca Oliveira%' THEN 'Bianca Oliveira'
      WHEN ${ad_name} LIKE '%MARCELLA KOSINSKI%' OR ${ad_name} LIKE '%Marcella Kosinski%' THEN 'Marcella Kosinski'
      WHEN ${ad_name} LIKE '%TRIZ HERMANO%' OR ${ad_name} LIKE '%TRIZ%' THEN 'Triz Hermano'
      WHEN ${ad_name} LIKE '%MÔNICA%' OR ${ad_name} LIKE '%Mônica%' THEN 'Mônica'
      WHEN ${ad_name} LIKE '%LIVIA KOELER%' OR ${ad_name} LIKE '%Livia Koeler%' THEN 'Livia Koeler'
      WHEN ${ad_name} LIKE '%BARBARA%' OR ${ad_name} LIKE '%Barbara%' THEN 'Barbara'
      WHEN ${ad_name} LIKE '%JACIRA DOCE%' OR ${ad_name} LIKE '%Jacira%' THEN 'Jacira Doce'
      WHEN ${ad_name} LIKE '%RENAN%' OR ${ad_name} LIKE '%Renan Justino%' THEN 'Renan Justino'
      WHEN ${ad_name} LIKE '%João%' OR ${ad_name} LIKE '%joao%' THEN 'João'
      WHEN ${ad_name} LIKE '%CELSO KAMURA%' THEN 'Celso Kamura'
      WHEN ${ad_name} LIKE '%POCAH %' THEN 'Pocah'
      WHEN ${ad_name} LIKE '%DR. THIAGO%' THEN 'Dr. Thiago'
      WHEN ${ad_name} LIKE '%CARLA%' THEN 'Carla'
      WHEN ${ad_name} LIKE '%Celso Zucatelli%' THEN 'Celso Zucatelli'
      WHEN ${ad_name} LIKE '%BRUH FERRERA%' OR  ${ad_name} LIKE '%BRUH FERREIRA%' THEN 'Bruh Ferreira'
      WHEN ${ad_name} LIKE '%FERNANDA LIMA%' OR ${ad_name} LIKE '%Fernanda%' THEN 'Fernanda Lima'
      WHEN ${ad_name} LIKE '%MARINA PUMAR%'OR  ${ad_name} LIKE '%Marina P%'THEN 'Marina Pumar'
      WHEN ${ad_name} LIKE '%PENELOPY JEAN%' THEN 'Penepoly Jean'
      WHEN ${ad_name} LIKE '%FERNANDA%' THEN 'Fernanda'
      WHEN ${ad_name} LIKE '%CINTHIA CRUZ%' THEN 'Cinthia Cruz'
      WHEN ${ad_name} LIKE '%MANUELA PEREZ%' OR  ${ad_name} LIKE '%Manuela Perez%' THEN 'Manuela Perez'
      WHEN ${ad_name} LIKE '%IVI PIZZOT %' OR  ${ad_name} LIKE '%Ivi Pizzot%' THEN 'Ivi Pizzot'
      WHEN ${ad_name} LIKE '%JULIA RODRIGUES%' THEN 'Julia Rodrigues'
      WHEN ${ad_name} LIKE '%ANDERSON VIEIRA%' THEN 'Anderson Vieira'
      WHEN ${ad_name} LIKE '%LUEDJI LUNA%' THEN 'Luedji Luna'
      WHEN ${ad_name} LIKE '%MARI MOON%' THEN 'Mari Moon'
      WHEN ${ad_name} LIKE '%TITI MULLER%' THEN 'Titi Muller'
      WHEN ${ad_name} LIKE '%EDUARDA MELO %' THEN 'Eduarda Melo'
      WHEN ${ad_name} LIKE '%ROMULO NAVAJAS%' THEN 'Romulo Navajas'
      WHEN ${ad_name} LIKE '%NAIUMI%' THEN 'Naiumi'
      WHEN ${ad_name} LIKE '%TRIXXIE%' THEN 'Trixxie'
      WHEN ${ad_name} LIKE '%LETICIA PANAR%' THEN 'Leticia Panar'
      WHEN ${ad_name} LIKE '%AÇUCENA%' THEN 'Açucena'

      WHEN ${ad_name} LIKE '%PAMELA TOMÉ%' THEN 'Pamela Tomé'
      WHEN ${ad_name} LIKE '%RAISSA SANTOS%' THEN 'Raissa Santos'
      WHEN ${ad_name} LIKE '%IRÊ ALVES%' OR  ${ad_name} LIKE '%Irê Alves%' THEN 'Irê Alves'
      WHEN ${ad_name} LIKE '%JULIA COX%' OR  ${ad_name} LIKE '%Julia Cox%' THEN 'Julia Cox'
      WHEN ${ad_name} LIKE '%CAMILLE%' THEN 'Camille'
      WHEN ${ad_name} LIKE '%SABRINA SATO%' THEN 'Sabrina Sato'
      WHEN ${ad_name} LIKE '%DANI SOOMIN%' THEN 'Dani Soomin'
      WHEN ${ad_name} LIKE '%MONY TAVARES%' THEN 'Mony Tavares'
      WHEN ${ad_name} LIKE '%GABE ZANQUI%' THEN 'Gabe Zanqui'
      WHEN ${ad_name} LIKE '%AMANDA SANTOS%' OR  ${ad_name} LIKE '%Amanda Santos%' THEN 'Amanda Santos'
      WHEN ${ad_name} LIKE '%DINAMICHI%' OR ${ad_name} LIKE '%Dinamichi%' THEN 'Dinamichi'
      WHEN ${ad_name} LIKE '%Beatris Brantes%' OR  ${ad_name} LIKE '%BEATRIS BRANTES%' THEN 'Beatris Brantes'
      WHEN ${ad_name} LIKE '%NICOLAS JUMP%'  OR  ${ad_name} LIKE '%Nicolas Jump%' THEN 'Nicolas Jump'
      WHEN ${ad_name} LIKE '%CAROL MARTINS%' OR ${ad_name} LIKE '%Carol Martins%'THEN 'Carol Martins'
      WHEN ${ad_group_name} LIKE '%Marina Pumar%' THEN 'Marina Pumar'
      WHEN ${ad_group_name} LIKE '%Fernanda Lima%' THEN 'Fernanda Lima'
      WHEN ${ad_group_name} LIKE '%Mariana Xavier%' THEN 'Mariana Xavier'
      WHEN ${ad_group_name} LIKE '%Aline Campos%' THEN 'Aline Campos'
      WHEN ${ad_group_name} LIKE '%Vivi Cake%' THEN 'Vivi Cake'
      WHEN ${ad_group_name} LIKE '%Dra. Lilian%' THEN 'Dra. Lilian'
      WHEN ${ad_group_name} LIKE '%Lidi Lisboa%' THEN 'Lidi Lisboa'
      WHEN ${ad_group_name} LIKE '%Marina Xavier%' THEN 'Marina Xavier'
      WHEN ${ad_group_name} LIKE '%BIA SOUZA%' THEN 'Bia Souza'
      WHEN ${ad_group_name} LIKE '%GIULIA BE%' THEN 'Giulia Be'
      WHEN ${ad_group_name} LIKE '%MA PANTALEÃO%' THEN 'Ma Pantaleão'
      WHEN ${ad_group_name} LIKE '%THAÍS BRAZ%' THEN 'Thaís Braz'
      WHEN ${ad_group_name} LIKE '%VICTORIA DINIZ%' THEN 'Victoria Diniz'
      WHEN ${ad_group_name} LIKE '%Ananda%' THEN 'Ananda'
      WHEN ${ad_group_name} LIKE '%NAUTA MC%'  OR  ${ad_name} LIKE '%Nauta M%'THEN 'Nauta Mc'
      WHEN ${ad_group_name} LIKE '%fernanda Lima%' THEN 'Fernanda Lima'
      WHEN ${ad_group_name} LIKE '%ERICK COSTA%' OR ${ad_name} LIKE '%Eric Costa%' THEN 'Eric Costa'
      WHEN ${ad_group_name} LIKE '%ISABELA ALVES%' OR ${ad_name} LIKE '%Isabela%' THEN 'Isabela Alves'

      WHEN ${ad_group_name} LIKE '%CAROL FERNANDES%' OR ${ad_name} LIKE '%Carol Fernandes%' THEN 'Carol Fernandes'

      WHEN ${ad_group_name} LIKE '%BRENDA REGIO%' OR ${ad_name} LIKE '%Brenda Regio%' THEN 'Brenda Regio'

      WHEN ${ad_group_name} LIKE '%ANDERSON MARÉ%' OR ${ad_name} LIKE '%Anderson Mare%' THEN 'Anderson Maré'

      WHEN ${ad_group_name} LIKE '%MARTA SOUZA%' OR ${ad_name} LIKE '%Marta Souza%' THEN 'Marta Souza'

      WHEN ${ad_group_name} LIKE '%CAROL FELIS%' OR ${ad_name} LIKE '%Carol Felis%' THEN 'Carol Felis'

      WHEN ${ad_group_name} LIKE '%THIAGO SIMPATIA %' OR ${ad_name} LIKE '%Thiago Simpatia%' THEN 'Thiago Simpatia'

       WHEN ${ad_group_name} LIKE '%FLAVIA RODRIGUES%' OR ${ad_name} LIKE '%Flavia Rodrigues%' THEN 'Flavia Rodrigues'

      WHEN ${ad_group_name} LIKE '%marina pumar%' THEN 'Marina Pumar'
      WHEN ${ad_group_name} LIKE '%SUBCELEBRITIES %' THEN 'Subcelebrities'
      WHEN ${ad_group_name} LIKE '%Catarina%' OR  ${ad_group_name} LIKE '%CATARINA%' THEN 'Catarina'
      WHEN ${ad_group_name} LIKE '%Emilly%' THEN 'Emilly'
      WHEN ${ad_group_name} LIKE '%Cecilia%' OR  ${ad_group_name} LIKE '%CECÍLIA%' OR  ${ad_group_name} LIKE '%Cecília%'  THEN 'Cecília '


              END ;;
  }


  dimension: Criativos_format {
    type: string
    sql: CASE
          WHEN ${ad_name} LIKE '%crespo divino' THEN 'Crespo divino'
          WHEN ${ad_name} LIKE '%Mais cachos%' THEN 'Mais cachos'
          WHEN ${ad_name} LIKE '%mido de milho%' THEN 'Amido de milho'


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


  dimension: VIEWS25 {
    type: number
    sql: ${TABLE}.VIEWS25 ;;
  }

  dimension: VIEWS6 {
    type: number
    sql: ${TABLE}.VIEWS6 ;;
  }

  dimension: VIEWS50 {
    type: number
    sql: ${TABLE}.VIEWS50 ;;
  }

  dimension: VIEWS75 {
    type: number
    sql: ${TABLE}.VIEWS75 ;;
  }

  dimension: VIEWS100 {
    type: number
    sql: ${TABLE}.VIEWS100 ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, ad_group_name, ad_name]
  }
}
