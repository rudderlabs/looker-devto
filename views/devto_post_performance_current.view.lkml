view: devto_post_performance_current {
  derived_table: {
    sql: SELECT
        devto_post_performance."URL",
        MAX(devto_post_performance."TITLE") AS "TITLE",
        MAX(devto_post_performance."PAGE_VIEWS_COUNT") AS "PAGE_VIEWS_COUNT",
        MAX(devto_post_performance."POSITIVE_REACTIONS_COUNT") AS "POSITIVE_REACTIONS_COUNT",
        MAX(devto_post_performance."PUBLIC_REACTIONS_COUNT") AS "PUBLIC_REACTIONS_COUNT",
        MAX(devto_post_performance."COMMENTS_COUNT") AS "COMMENTS_COUNT",
        MAX(devto_post_performance."ORGANIZATION_USERNAME") AS "ORGANIZATION_USERNAME",
        MAX(devto_post_performance."USER_USERNAME") AS "USER_USERNAME",
        MAX(devto_post_performance."TAG_LIST") AS "TAG_LIST",
        MAX(devto_post_performance."TYPE_OF") AS "TYPE_OF",
        MAX(devto_post_performance."CREATED_AT") AS "CREATED_AT",
        MAX(devto_post_performance."EDITED_AT") AS "EDITED_AT",
        MAX(devto_post_performance."LAST_COMMENT_AT") AS "LAST_COMMENT_AT",
        MAX(devto_post_performance."PUBLISHED_AT") AS "PUBLISHED_AT",
        MAX(devto_post_performance."SIMPLESENTAT") AS "SIMPLESENTAT"
      FROM "DEVTO_ORG"."DEVTO_POST_PERFORMANCE"
      WHERE "SIMPLESENTAT" = (SELECT MAX("SIMPLESENTAT") FROM "DEVTO_ORG"."DEVTO_POST_PERFORMANCE")
      GROUP BY "SIMPLESENTAT", "URL"
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
