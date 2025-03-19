view: msd_import_2025_f {
  sql_table_name: `looker-integrations-402615.Ad_Acompanhamento.MSD_IMPORT_2025_F` ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.Campaign_Name ;;
  }
  dimension: cliques {
    type: number
    sql: ${TABLE}.Cliques ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: impressoes {
    type: number
    sql: ${TABLE}.Impressoes ;;
  }
  dimension: influenciadora {
    type: string
    sql: ${TABLE}.Influenciadora ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.Platform ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
