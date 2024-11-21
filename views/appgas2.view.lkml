view: appgas2 {
  sql_table_name: `looker-integrations-402615.Ad_Acompanhamento.APPGAS2` ;;

  dimension: ad_group {
    type: string
    sql: ${TABLE}.AdGroup ;;
  }
  dimension: campanha {
    type: string
    sql: ${TABLE}.Campanha ;;
  }
  dimension: canal {
    type: string
    sql: ${TABLE}.Canal ;;
  }
  dimension: cliques_attribution {
    type: number
    sql: ${TABLE}.Cliques_Attribution ;;
  }
  dimension: compras {
    type: number
    sql: ${TABLE}.Compras ;;
  }
  dimension: criativo {
    type: string
    sql: ${TABLE}.Criativo ;;
  }
  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data ;;
  }
  dimension: impressoes {
    type: number
    sql: ${TABLE}.Impressoes ;;
  }
  dimension: installs {
    type: number
    sql: ${TABLE}.Installs ;;
  }
  dimension: pedidos_cancelados {
    type: number
    sql: ${TABLE}.Pedidos_Cancelados ;;
  }
  dimension: waus {
    type: number
    sql: ${TABLE}.WAUs ;;
  }
  measure: count {
    type: count
  }
}
