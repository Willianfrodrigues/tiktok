view: inflr_planilha_for {
  sql_table_name: `looker-integrations-402615.tiktok_ads.Inflr_planilha_for` ;;

  dimension: campanha {
    type: string
    sql: ${TABLE}.Campanha ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.CPM ;;
  }
  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data ;;
  }
  dimension_group: data_fim {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data_Fim ;;
  }
  dimension: emissao {
    type: string
    sql: ${TABLE}.Emissao ;;
  }
  dimension: impressoes_contratadas {
    type: number
    sql: ${TABLE}.Impressoes_contratadas ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }
  dimension_group: veiculacao {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Veiculacao ;;
  }


  measure: count {
    type: count
  }
}
