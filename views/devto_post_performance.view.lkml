view: devto_post_performance {
  sql_table_name: "DEVTO_ORG"."DEVTO_POST_PERFORMANCE"
    ;;

  dimension: comments_count {
    type: string
    sql: ${TABLE}."COMMENTS_COUNT" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension_group: edited {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."EDITED_AT" ;;
  }

  dimension_group: last_comment {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_COMMENT_AT" ;;
  }

  dimension: organization_username {
    type: string
    sql: ${TABLE}."ORGANIZATION_USERNAME" ;;
  }

  dimension: page_views_count {
    type: string
    sql: ${TABLE}."PAGE_VIEWS_COUNT" ;;
  }

  dimension: positive_reactions_count {
    type: string
    sql: ${TABLE}."POSITIVE_REACTIONS_COUNT" ;;
  }

  dimension: public_reactions_count {
    type: string
    sql: ${TABLE}."PUBLIC_REACTIONS_COUNT" ;;
  }

  dimension_group: published {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PUBLISHED_AT" ;;
  }

  dimension_group: sent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SENT_AT" ;;
  }

  dimension_group: simplesentat {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SIMPLESENTAT" ;;
  }

  dimension: tag_list {
    type: string
    sql: ${TABLE}."TAG_LIST" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: type_of {
    type: string
    sql: ${TABLE}."TYPE_OF" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: user_username {
    type: string
    sql: ${TABLE}."USER_USERNAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [organization_username, user_username, title]
  }
}
