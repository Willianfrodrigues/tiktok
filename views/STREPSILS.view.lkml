view: strepsils {
  derived_table: {
    sql:
      SELECT 'Nunca Vi 1 Cientista' AS influenciador, 11660 AS impressoes, 36 AS cliques, '0.31%' AS crt
      UNION ALL
      SELECT 'Pedro Loss' AS influenciador, 87162 AS impressoes, 24 AS cliques, '0.03%' AS crt ;;
  }

  dimension: influenciador {
    description: "Nome do influenciador"
    type: string
    sql: ${TABLE}.influenciador ;;
  }

  dimension: impressoes {
    description: "Número de impressões"
    type: number
    sql: ${TABLE}.impressoes ;;
  }

  dimension: cliques {
    description: "Número de cliques"
    type: number
    sql: ${TABLE}.cliques ;;
  }

  dimension: crt {
    description: "Click-through rate (CRT)"
    type: string
    sql: ${TABLE}.crt ;;
  }

  measure: total_impressoes {
    description: "Total de impressões"
    type: sum
    sql: ${impressoes} ;;
  }

  measure: total_cliques {
    description: "Total de cliques"
    type: sum
    sql: ${cliques} ;;
  }

  measure: average_crt {
    description: "Média de Click-through rate (CRT)"
    type: average
    sql: CAST(REPLACE(${crt}, '%', '') AS FLOAT) / 100 ;;
  }
}
