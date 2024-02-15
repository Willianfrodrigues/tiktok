view: tik_ad {
  sql_table_name: `tiktok_ads.TIK_AD` ;;

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.AD_GROUP_ID ;;
  }
  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.AD_GROUP_NAME ;;
  }
  dimension: ad_group_opt_status {
    type: string
    sql: ${TABLE}.AD_GROUP_OPT_STATUS ;;
  }
  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.AD_GROUP_STATUS ;;
  }
  dimension: ad_id {
    type: string
    sql: ${TABLE}.AD_ID ;;
  }
  dimension: ad_name {
    type: string
    sql: ${TABLE}.AD_NAME ;;
  }
  dimension: ad_opt_status {
    type: string
    sql: ${TABLE}.AD_OPT_STATUS ;;
  }
  dimension: ad_status {
    type: string
    sql: ${TABLE}.AD_STATUS ;;
  }
  dimension: ad_text {
    type: string
    sql: ${TABLE}.AD_TEXT ;;
  }
  dimension: add_billing_events {
    type: number
    sql: ${TABLE}.ADD_BILLING_EVENTS ;;
  }
  dimension: add_billing_value {
    type: number
    sql: ${TABLE}.ADD_BILLING_VALUE ;;
  }
  dimension: add_payment_info_events {
    type: number
    sql: ${TABLE}.ADD_PAYMENT_INFO_EVENTS ;;
  }
  dimension: add_to_wishlist_events {
    type: number
    sql: ${TABLE}.ADD_TO_WISHLIST_EVENTS ;;
  }
  dimension: add_to_wishlist_value {
    type: number
    sql: ${TABLE}.ADD_TO_WISHLIST_VALUE ;;
  }
  dimension: adgroup_placement {
    type: string
    sql: ${TABLE}.ADGROUP_PLACEMENT ;;
  }
  dimension: advertiser_address {
    type: string
    sql: ${TABLE}.ADVERTISER_ADDRESS ;;
  }
  dimension: advertiser_balance {
    type: number
    sql: ${TABLE}.ADVERTISER_BALANCE ;;
  }
  dimension: advertiser_company {
    type: string
    sql: ${TABLE}.ADVERTISER_COMPANY ;;
  }
  dimension: advertiser_country {
    type: string
    sql: ${TABLE}.ADVERTISER_COUNTRY ;;
  }
  dimension: advertiser_currency {
    type: string
    sql: ${TABLE}.ADVERTISER_CURRENCY ;;
  }
  dimension: advertiser_email {
    type: string
    sql: ${TABLE}.ADVERTISER_EMAIL ;;
  }
  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.ADVERTISER_ID ;;
  }
  dimension: advertiser_license_number {
    type: string
    sql: ${TABLE}.ADVERTISER_LICENSE_NUMBER ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.ADVERTISER_NAME ;;
  }
  dimension: advertiser_phone_number {
    type: string
    sql: ${TABLE}.ADVERTISER_PHONE_NUMBER ;;
  }
  dimension: advertiser_status {
    type: string
    sql: ${TABLE}.ADVERTISER_STATUS ;;
  }
  dimension: advertiser_timezone {
    type: string
    sql: ${TABLE}.ADVERTISER_TIMEZONE ;;
  }
  dimension: app_add_to_cart_events {
    type: number
    sql: ${TABLE}.APP_ADD_TO_CART_EVENTS ;;
  }
  dimension: app_add_to_cart_value {
    type: number
    sql: ${TABLE}.APP_ADD_TO_CART_VALUE ;;
  }
  dimension: app_download_url {
    type: string
    sql: ${TABLE}.APP_DOWNLOAD_URL ;;
  }
  dimension: app_id {
    type: string
    sql: ${TABLE}.APP_ID ;;
  }
  dimension: app_install_events {
    type: number
    sql: ${TABLE}.APP_INSTALL_EVENTS ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.APP_NAME ;;
  }
  dimension: app_package {
    type: string
    sql: ${TABLE}.APP_PACKAGE ;;
  }
  dimension: app_type {
    type: string
    sql: ${TABLE}.APP_TYPE ;;
  }
  dimension: audience_rule {
    type: string
    sql: ${TABLE}.AUDIENCE_RULE ;;
  }
  dimension: audience_type {
    type: string
    sql: ${TABLE}.AUDIENCE_TYPE ;;
  }
  dimension: bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BID ;;
  }
  dimension: bid_type {
    type: string
    sql: ${TABLE}.BID_TYPE ;;
  }
  dimension: billing_method {
    type: string
    sql: ${TABLE}.BILLING_METHOD ;;
  }
  dimension: button_click_consultation_value {
    type: number
    sql: ${TABLE}.BUTTON_CLICK_CONSULTATION_VALUE ;;
  }
  dimension: button_click_events {
    type: number
    sql: ${TABLE}.BUTTON_CLICK_EVENTS ;;
  }
  dimension: button_click_value {
    type: number
    sql: ${TABLE}.BUTTON_CLICK_VALUE ;;
  }
  dimension: call_to_action {
    type: string
    sql: ${TABLE}.CALL_TO_ACTION ;;
  }
  dimension: campaign_budget {
    type: number
    sql: ${TABLE}.CAMPAIGN_BUDGET ;;
  }
  dimension: campaign_budget_mode {
    type: string
    sql: ${TABLE}.CAMPAIGN_BUDGET_MODE ;;
  }
  dimension_group: campaign_creation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CAMPAIGN_CREATION_DATE ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }
  dimension_group: campaign_modify {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CAMPAIGN_MODIFY_DATE ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }
  dimension: campaign_objective_type {
    type: string
    sql: ${TABLE}.CAMPAIGN_OBJECTIVE_TYPE ;;
  }
  dimension: campaign_operation_status {
    type: string
    sql: ${TABLE}.CAMPAIGN_OPERATION_STATUS ;;
  }
  dimension: checkout_events {
    type: number
    sql: ${TABLE}.CHECKOUT_EVENTS ;;
  }
  dimension: checkout_value {
    type: number
    sql: ${TABLE}.CHECKOUT_VALUE ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.CLICKS ;;
  }
  dimension: complete_payment_events {
    type: number
    sql: ${TABLE}.COMPLETE_PAYMENT_EVENTS ;;
  }
  dimension: complete_tutorial_events {
    type: number
    sql: ${TABLE}.COMPLETE_TUTORIAL_EVENTS ;;
  }
  dimension: complete_tutorial_value {
    type: number
    sql: ${TABLE}.COMPLETE_TUTORIAL_VALUE ;;
  }
  dimension: consultation_events {
    type: number
    sql: ${TABLE}.CONSULTATION_EVENTS ;;
  }
  dimension: consultation_value {
    type: number
    sql: ${TABLE}.CONSULTATION_VALUE ;;
  }
  dimension: conversion_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CONVERSION_BID ;;
  }
  dimension: conversions {
    type: number
    sql: ${TABLE}.CONVERSIONS ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }
  dimension: cpv_video_duration {
    type: string
    sql: ${TABLE}.CPV_VIDEO_DURATION ;;
  }
  dimension: create_group_events {
    type: number
    sql: ${TABLE}.CREATE_GROUP_EVENTS ;;
  }
  dimension: create_group_value {
    type: number
    sql: ${TABLE}.CREATE_GROUP_VALUE ;;
  }
  dimension: create_role_events {
    type: number
    sql: ${TABLE}.CREATE_ROLE_EVENTS ;;
  }
  dimension: create_role_value {
    type: number
    sql: ${TABLE}.CREATE_ROLE_VALUE ;;
  }
  dimension: data_source_name {
    type: string
    sql: ${TABLE}.DATA_SOURCE_NAME ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE ;;
  }
  dimension: deep_bid_type {
    type: string
    sql: ${TABLE}.DEEP_BID_TYPE ;;
  }
  dimension: deep_cpabid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DEEP_CPABID ;;
  }
  dimension: deep_external_action {
    type: string
    sql: ${TABLE}.DEEP_EXTERNAL_ACTION ;;
  }
  dimension: display_name {
    type: string
    sql: ${TABLE}.DISPLAY_NAME ;;
  }
  dimension: download_button_value {
    type: number
    sql: ${TABLE}.DOWNLOAD_BUTTON_VALUE ;;
  }
  dimension: download_detail_page_events {
    type: number
    sql: ${TABLE}.DOWNLOAD_DETAIL_PAGE_EVENTS ;;
  }
  dimension: download_detail_page_value {
    type: number
    sql: ${TABLE}.DOWNLOAD_DETAIL_PAGE_VALUE ;;
  }
  dimension: external_action {
    type: string
    sql: ${TABLE}.EXTERNAL_ACTION ;;
  }
  dimension: form_button_clicks_value {
    type: number
    sql: ${TABLE}.FORM_BUTTON_CLICKS_VALUE ;;
  }
  dimension: form_detail_page_browse_events {
    type: number
    sql: ${TABLE}.FORM_DETAIL_PAGE_BROWSE_EVENTS ;;
  }
  dimension: form_detail_page_browse_value {
    type: number
    sql: ${TABLE}.FORM_DETAIL_PAGE_BROWSE_VALUE ;;
  }
  dimension: form_submission_events {
    type: number
    sql: ${TABLE}.FORM_SUBMISSION_EVENTS ;;
  }
  dimension: form_submission_value {
    type: number
    sql: ${TABLE}.FORM_SUBMISSION_VALUE ;;
  }
  dimension: image_mode {
    type: string
    sql: ${TABLE}.IMAGE_MODE ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.IMPRESSIONS ;;
  }
  dimension: in_app_ad_click_value {
    type: number
    sql: ${TABLE}.IN_APP_AD_CLICK_VALUE ;;
  }
  dimension: in_app_ad_clicks {
    type: number
    sql: ${TABLE}.IN_APP_AD_CLICKS ;;
  }
  dimension: in_app_ad_impressions {
    type: number
    sql: ${TABLE}.IN_APP_AD_IMPRESSIONS ;;
  }
  dimension: in_app_ad_impressions_value {
    type: number
    sql: ${TABLE}.IN_APP_AD_IMPRESSIONS_VALUE ;;
  }
  dimension: initiate_checkout_events {
    type: number
    sql: ${TABLE}.INITIATE_CHECKOUT_EVENTS ;;
  }
  dimension: initiate_checkout_value {
    type: number
    sql: ${TABLE}.INITIATE_CHECKOUT_VALUE ;;
  }
  dimension: is_comment_disable {
    type: yesno
    sql: ${TABLE}.IS_COMMENT_DISABLE ;;
  }
  dimension: join_group_events {
    type: number
    sql: ${TABLE}.JOIN_GROUP_EVENTS ;;
  }
  dimension: join_group_value {
    type: number
    sql: ${TABLE}.JOIN_GROUP_VALUE ;;
  }
  dimension: keywords {
    type: string
    sql: ${TABLE}.KEYWORDS ;;
  }
  dimension: landing_page_url {
    type: string
    sql: ${TABLE}.LANDING_PAGE_URL ;;
  }
  dimension: launch_app_events {
    type: number
    sql: ${TABLE}.LAUNCH_APP_EVENTS ;;
  }
  dimension: level_achieve_events {
    type: number
    sql: ${TABLE}.LEVEL_ACHIEVE_EVENTS ;;
  }
  dimension: level_achieve_value {
    type: number
    sql: ${TABLE}.LEVEL_ACHIEVE_VALUE ;;
  }
  dimension: loan_apply_events {
    type: number
    sql: ${TABLE}.LOAN_APPLY_EVENTS ;;
  }
  dimension: loan_approval_events {
    type: number
    sql: ${TABLE}.LOAN_APPROVAL_EVENTS ;;
  }
  dimension: loan_disbursement_events {
    type: number
    sql: ${TABLE}.LOAN_DISBURSEMENT_EVENTS ;;
  }
  dimension: login_events {
    type: number
    sql: ${TABLE}.LOGIN_EVENTS ;;
  }
  dimension: next_day_open_events {
    type: number
    sql: ${TABLE}.NEXT_DAY_OPEN_EVENTS ;;
  }
  dimension: online_consultation_events {
    type: number
    sql: ${TABLE}.ONLINE_CONSULTATION_EVENTS ;;
  }
  dimension: online_consultation_value {
    type: number
    sql: ${TABLE}.ONLINE_CONSULTATION_VALUE ;;
  }
  dimension: optimize_goal {
    type: string
    sql: ${TABLE}.OPTIMIZE_GOAL ;;
  }
  dimension: pacing {
    type: string
    sql: ${TABLE}.PACING ;;
  }
  dimension: page_browse_consultation_events {
    type: number
    sql: ${TABLE}.PAGE_BROWSE_CONSULTATION_EVENTS ;;
  }
  dimension: page_browse_consultation_value {
    type: number
    sql: ${TABLE}.PAGE_BROWSE_CONSULTATION_VALUE ;;
  }
  dimension: page_browse_events {
    type: number
    sql: ${TABLE}.PAGE_BROWSE_EVENTS ;;
  }
  dimension: page_search_value {
    type: number
    sql: ${TABLE}.PAGE_SEARCH_VALUE ;;
  }
  dimension: paid_comments {
    type: number
    sql: ${TABLE}.PAID_COMMENTS ;;
  }
  dimension: paid_follows {
    type: number
    sql: ${TABLE}.PAID_FOLLOWS ;;
  }
  dimension: paid_likes {
    type: number
    sql: ${TABLE}.PAID_LIKES ;;
  }
  dimension: paid_shares {
    type: number
    sql: ${TABLE}.PAID_SHARES ;;
  }
  dimension: pixel_id {
    type: string
    sql: ${TABLE}.PIXEL_ID ;;
  }
  dimension: placement_type {
    type: string
    sql: ${TABLE}.PLACEMENT_TYPE ;;
  }
  dimension: playable_url {
    type: string
    sql: ${TABLE}.PLAYABLE_URL ;;
  }
  dimension: product_details_page_browse_events {
    type: number
    sql: ${TABLE}.PRODUCT_DETAILS_PAGE_BROWSE_EVENTS ;;
  }
  dimension: product_details_page_browse_value {
    type: number
    sql: ${TABLE}.PRODUCT_DETAILS_PAGE_BROWSE_VALUE ;;
  }
  dimension: profile_image {
    type: string
    sql: ${TABLE}.PROFILE_IMAGE ;;
  }
  dimension: purchase_events {
    type: number
    sql: ${TABLE}.PURCHASE_EVENTS ;;
  }
  dimension: purchase_value {
    type: number
    sql: ${TABLE}.PURCHASE_VALUE ;;
  }
  dimension: real_time_app_installs {
    type: number
    sql: ${TABLE}.REAL_TIME_APP_INSTALLS ;;
  }
  dimension: real_time_conversions {
    type: number
    sql: ${TABLE}.REAL_TIME_CONVERSIONS ;;
  }
  dimension: real_time_results {
    type: number
    sql: ${TABLE}.REAL_TIME_RESULTS ;;
  }
  dimension: registration_events {
    type: number
    sql: ${TABLE}.REGISTRATION_EVENTS ;;
  }
  dimension: results {
    type: number
    sql: ${TABLE}.RESULTS ;;
  }
  dimension_group: schedule_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.SCHEDULE_END_TIME ;;
  }
  dimension_group: schedule_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.SCHEDULE_START_TIME ;;
  }
  dimension: schedule_type {
    type: string
    sql: ${TABLE}.SCHEDULE_TYPE ;;
  }
  dimension: search_events {
    type: number
    sql: ${TABLE}.SEARCH_EVENTS ;;
  }
  dimension: secondary_goal_result {
    type: number
    sql: ${TABLE}.SECONDARY_GOAL_RESULT ;;
  }
  dimension: spend_credits_events {
    type: number
    sql: ${TABLE}.SPEND_CREDITS_EVENTS ;;
  }
  dimension: spend_credits_value {
    type: number
    sql: ${TABLE}.SPEND_CREDITS_VALUE ;;
  }
  dimension: start_trial_events {
    type: number
    sql: ${TABLE}.START_TRIAL_EVENTS ;;
  }
  dimension: statistic_type {
    type: string
    sql: ${TABLE}.STATISTIC_TYPE ;;
  }
  dimension: subscribe_events {
    type: number
    sql: ${TABLE}.SUBSCRIBE_EVENTS ;;
  }
  dimension: subscribe_value {
    type: number
    sql: ${TABLE}.SUBSCRIBE_VALUE ;;
  }
  dimension: target_age {
    type: string
    sql: ${TABLE}.TARGET_AGE ;;
  }
  dimension: target_android_osv {
    type: string
    sql: ${TABLE}.TARGET_ANDROID_OSV ;;
  }
  dimension: target_connection_type {
    type: string
    sql: ${TABLE}.TARGET_CONNECTION_TYPE ;;
  }
  dimension: target_device_price {
    type: string
    sql: ${TABLE}.TARGET_DEVICE_PRICE ;;
  }
  dimension: target_gender {
    type: string
    sql: ${TABLE}.TARGET_GENDER ;;
  }
  dimension: target_ios_osv {
    type: string
    sql: ${TABLE}.TARGET_IOS_OSV ;;
  }
  dimension: target_languages {
    type: string
    sql: ${TABLE}.TARGET_LANGUAGES ;;
  }
  dimension: target_operation_system {
    type: string
    sql: ${TABLE}.TARGET_OPERATION_SYSTEM ;;
  }
  dimension: total_complete_payment_value {
    type: number
    sql: ${TABLE}.TOTAL_COMPLETE_PAYMENT_VALUE ;;
  }
  dimension: unlock_achievement_events {
    type: number
    sql: ${TABLE}.UNLOCK_ACHIEVEMENT_EVENTS ;;
  }
  dimension: unlock_achievement_value {
    type: number
    sql: ${TABLE}.UNLOCK_ACHIEVEMENT_VALUE ;;
  }
  dimension: user_registration_events {
    type: number
    sql: ${TABLE}.USER_REGISTRATION_EVENTS ;;
  }
  dimension: user_registration_value {
    type: number
    sql: ${TABLE}.USER_REGISTRATION_VALUE ;;
  }
  dimension: video_id {
    type: string
    sql: ${TABLE}.VIDEO_ID ;;
  }
  dimension: video_play_actions {
    type: number
    sql: ${TABLE}.VIDEO_PLAY_ACTIONS ;;
  }
  dimension: video_views_p100 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P100 ;;
  }
  dimension: video_views_p25 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P25 ;;
  }
  dimension: video_views_p50 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P50 ;;
  }
  dimension: video_views_p75 {
    type: number
    sql: ${TABLE}.VIDEO_VIEWS_P75 ;;
  }
  dimension: video_watched_2_s {
    type: number
    sql: ${TABLE}.VIDEO_WATCHED_2S ;;
  }
  dimension: video_watched_6_s {
    type: number
    sql: ${TABLE}.VIDEO_WATCHED_6S ;;
  }
  dimension: view_content_events {
    type: number
    sql: ${TABLE}.VIEW_CONTENT_EVENTS ;;
  }
  dimension: view_content_value {
    type: number
    sql: ${TABLE}.VIEW_CONTENT_VALUE ;;
  }
  dimension: web_add_to_cart_events {
    type: number
    sql: ${TABLE}.WEB_ADD_TO_CART_EVENTS ;;
  }
  dimension: web_add_to_cart_value {
    type: number
    sql: ${TABLE}.WEB_ADD_TO_CART_VALUE ;;
  }
  dimension: web_place_order_events {
    type: number
    sql: ${TABLE}.WEB_PLACE_ORDER_EVENTS ;;
  }
  dimension: web_place_order_value {
    type: number
    sql: ${TABLE}.WEB_PLACE_ORDER_VALUE ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	app_name,
	display_name,
	campaign_name,
	ad_group_name,
	data_source_name,
	advertiser_name,
	ad_name
	]
  }

}
