# The name of this view in Looker is "Achec"
view: achec {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-integrations-402615.Ad_Acompanhamento.ACHEC` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Campaign" in Explore.

  dimension: campaign {
    type: string
    sql: ${TABLE}.Campaign ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Data ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;  }
  measure: average_impressions {
    type: average
    sql: ${impressions} ;;  }

  dimension: insertion_order {
    type: string
    sql: ${TABLE}.Insertion_order ;;
  }

  dimension: investimento {
    type: number
    sql: ${TABLE}.Investimento ;;
  }

  dimension: line_item {
    type: string
    sql: ${TABLE}.Line_item ;;
  }

  dimension: plataforma {
    type: string
    sql: ${TABLE}.Plataforma ;;
  }

  dimension: video_1st_quartile_completes {
    type: number
    sql: ${TABLE}.Video_1st_quartile_completes ;;
  }

  dimension: video_3rd_quartile_completes {
    type: number
    sql: ${TABLE}.Video_3rd_quartile_completes ;;
  }

  dimension: video_completions {
    type: number
    sql: ${TABLE}.Video_completions ;;
  }

  dimension: video_mid_points {
    type: number
    sql: ${TABLE}.Video_mid_points ;;
  }

  dimension: video_plays {
    type: number
    sql: ${TABLE}.Video_plays ;;
  }
  measure: count {
    type: count
  }
}
