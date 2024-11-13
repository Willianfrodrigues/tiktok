# The name of this view in Looker is "Enhertu F"
view: enhertu_f {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-integrations-402615.Ad_Acompanhamento.EnhertuF` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active View Viewable Impressions" in Explore.

  dimension: active_view_viewable_impressions {
    type: string
    sql: ${TABLE}.Active_View_Viewable_Impressions ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.Campaign ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.Campaign_ID ;;
  }

  dimension: click_rate_ctr {
    type: string
    sql: ${TABLE}.Click_Rate_CTR ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: complete_views_video {
    type: string
    sql: ${TABLE}.Complete_Views_Video ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.Creative ;;
  }

  dimension: creative_size {
    type: string
    sql: ${TABLE}.Creative_Size ;;
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

  dimension: first_quartile_views_video {
    type: string
    sql: ${TABLE}.First_Quartile_Views_Video ;;
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
    sql: ${TABLE}.Insertion_Order ;;
  }

  dimension: insertion_order_id {
    type: string
    sql: ${TABLE}.Insertion_Order_ID ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }

  dimension: total_conversions {
    type: string
    sql: ${TABLE}.Total_Conversions ;;
  }
  measure: count {
    type: count
  }
}
