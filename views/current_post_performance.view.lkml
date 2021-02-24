view: current_post_performance {
  derived_table: {
    sql: SELECT
        devto_post_performance."TITLE"  AS "devto_post_performance.title",
        devto_post_performance."URL"  AS "devto_post_performance.url",
        devto_post_performance."USER_USERNAME"  AS "devto_post_performance.user_username",
        devto_post_performance."PAGE_VIEWS_COUNT"  AS "devto_post_performance.page_views_count",
        devto_post_performance."PUBLIC_REACTIONS_COUNT"  AS "devto_post_performance.public_reactions_count",
        TO_CHAR(DATE_TRUNC('second', devto_post_performance."PUBLISHED_AT" ), 'YYYY-MM-DD HH24:MI:SS') AS "devto_post_performance.published_time",
        TO_CHAR(DATE_TRUNC('second', devto_post_performance."SIMPLESENTAT" ), 'YYYY-MM-DD HH24:MI:SS') AS "devto_post_performance.simplesentat_time"
      FROM "DEVTO_ORG"."DEVTO_POST_PERFORMANCE"
           AS devto_post_performance
      WHERE devto_post_performance."SIMPLESENTAT" = (SELECT MAX("SIMPLESENTAT") FROM "DEVTO_ORG"."DEVTO_POST_PERFORMANCE")

      GROUP BY 1,2,3,4,5,DATE_TRUNC('second', devto_post_performance."PUBLISHED_AT" ),DATE_TRUNC('second', devto_post_performance."SIMPLESENTAT" )
      ORDER BY 6 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: devto_post_performance_title {
    type: string
    sql: ${TABLE}."devto_post_performance.title" ;;
  }

  dimension: devto_post_performance_url {
    type: string
    sql: ${TABLE}."devto_post_performance.url" ;;
  }

  dimension: devto_post_performance_user_username {
    type: string
    sql: ${TABLE}."devto_post_performance.user_username" ;;
  }

  dimension: devto_post_performance_page_views_count {
    type: string
    sql: ${TABLE}."devto_post_performance.page_views_count" ;;
  }

  dimension: devto_post_performance_public_reactions_count {
    type: string
    sql: ${TABLE}."devto_post_performance.public_reactions_count" ;;
  }

  dimension: devto_post_performance_published_time {
    type: string
    sql: ${TABLE}."devto_post_performance.published_time" ;;
  }

  dimension: devto_post_performance_simplesentat_time {
    type: string
    sql: ${TABLE}."devto_post_performance.simplesentat_time" ;;
  }

  set: detail {
    fields: [
      devto_post_performance_title,
      devto_post_performance_url,
      devto_post_performance_user_username,
      devto_post_performance_page_views_count,
      devto_post_performance_public_reactions_count,
      devto_post_performance_published_time,
      devto_post_performance_simplesentat_time
    ]
  }
}
