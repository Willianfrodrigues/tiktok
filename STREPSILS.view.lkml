view: strepsils {
  dimension: influenciador {
    type: string
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN 'Nunca Vi 1 Cientista'
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN 'Pedro Loss'
    END ;;
  }

  dimension: impressoes {
    type: number
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN 11660
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN 87162
    END ;;
  }

  dimension: cliques {
    type: number
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN 36
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN 24
    END ;;
  }

  dimension: crt {
    type: string
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN '0,31%'
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN '0,03%'
    END ;;
  }

  measure: total_impressoes {
    type: sum
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN 11660
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN 87162
    END ;;
  }

  measure: total_cliques {
    type: sum
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN 36
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN 24
    END ;;
  }

  measure: average_crt {
    type: average
    sql:
    CASE
      WHEN ${TABLE}.influenciador = 'Nunca Vi 1 Cientista' THEN CAST(0.31 AS FLOAT)
      WHEN ${TABLE}.influenciador = 'Pedro Loss' THEN CAST(0.03 AS FLOAT)
    END ;;
  }
}
