view: devto_post_performance_current {
  derived_table: {
    sql: SELECT
        devto_post_performance."URL",
        devto_post_performance."TITLE",
        devto_post_performance."PAGE_VIEWS_COUNT",
        devto_post_performance."POSITIVE_REACTIONS_COUNT",
        devto_post_performance."PUBLIC_REACTIONS_COUNT",
        devto_post_performance."COMMENTS_COUNT",
        devto_post_performance."ORGANIZATION_USERNAME",
        devto_post_performance."USER_USERNAME",
        devto_post_performance."TAG_LIST",
        devto_post_performance."TYPE_OF",
        devto_post_performance."CREATED_AT",
        devto_post_performance."EDITED_AT",
        devto_post_performance."LAST_COMMENT_AT",
        devto_post_performance."PUBLISHED_AT",
        devto_post_performance."SIMPLESENTAT"
      FROM "DEVTO_ORG"."DEVTO_POST_PERFORMANCE"
      WHERE "SIMPLESENTAT" = (SELECT MAX("SIMPLESENTAT") FROM "DEVTO_ORG"."DEVTO_POST_PERFORMANCE")
       ;;
  }

  dimension: comments_count {
    type: number
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
    type: number
    sql: ${TABLE}."PAGE_VIEWS_COUNT" ;;
  }

  dimension: positive_reactions_count {
    type: number
    sql: ${TABLE}."POSITIVE_REACTIONS_COUNT" ;;
  }

  dimension: public_reactions_count {
    type: number
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
