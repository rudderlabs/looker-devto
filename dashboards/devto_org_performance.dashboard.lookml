- dashboard: devto_org_performance
  title: dev.to Org Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Current Post Performance - All Posts
    name: Current Post Performance - All Posts
    model: rudder_devto_metrics
    explore: devto_post_performance_current
    type: looker_grid
    fields: [devto_post_performance_current.title, devto_post_performance_current.page_views_count,
      devto_post_performance_current.positive_reactions_count, devto_post_performance_current.comments_count,
      devto_post_performance_current.published_time, devto_post_performance_current.user_username,
      devto_post_performance_current.tag_list, devto_post_performance_current.url,
      devto_post_performance_current.simplesentat_time]
    sorts: [devto_post_performance_current.published_time desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 15
    col: 0
    width: 24
    height: 10
  - title: Post Count - Current
    name: Post Count - Current
    model: rudder_devto_metrics
    explore: devto_post_performance_current
    type: single_value
    fields: [devto_post_performance_current.count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_current.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_current.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_public_reactions_count, based_on: devto_post_performance_current.public_reactions_count,
        expression: '', label: Sum of Public Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_current.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Total Tracked Post Views - Current
    name: Total Tracked Post Views - Current
    model: rudder_devto_metrics
    explore: devto_post_performance_current
    type: single_value
    fields: [sum_of_page_views_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_current.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_current.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_public_reactions_count, based_on: devto_post_performance_current.public_reactions_count,
        expression: '', label: Sum of Public Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_current.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Total Positive Reactions - Current
    name: Total Positive Reactions - Current
    model: rudder_devto_metrics
    explore: devto_post_performance_current
    type: single_value
    fields: [sum_of_positive_reactions_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_current.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_current.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_public_reactions_count, based_on: devto_post_performance_current.public_reactions_count,
        expression: '', label: Sum of Public Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_current.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Total Comments - Current
    name: Total Comments - Current
    model: rudder_devto_metrics
    explore: devto_post_performance_current
    type: single_value
    fields: [sum_of_comments_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance_current.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Post Count - 1 week ago
    name: Post Count - 1 week ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_week
    type: single_value
    fields: [devto_post_performance_1_week.count]
    sorts: [devto_post_performance_1_week.count desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance_1_week.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance_1_week.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_week.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Total Tracked Post Views - 1 week ago
    name: Total Tracked Post Views - 1 week ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_week
    type: single_value
    fields: [sum_of_page_views_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance_1_week.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance_1_week.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_week.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 3
    col: 6
    width: 6
    height: 3
  - title: Total Positive Reactions - 1 week ago
    name: Total Positive Reactions - 1 week ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_week
    type: single_value
    fields: [sum_of_positive_reactions_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance_1_week.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance_1_week.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_week.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 3
    col: 12
    width: 6
    height: 3
  - title: Total Comments - 1 week ago
    name: Total Comments - 1 week ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_week
    type: single_value
    fields: [sum_of_comments_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance_1_week.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance_1_week.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_week.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 3
    col: 18
    width: 6
    height: 3
  - title: Post Count - 1 month ago
    name: Post Count - 1 month ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_month
    type: single_value
    fields: [devto_post_performance_1_month.count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_1_month.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_month.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_1_month.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 0
    width: 6
    height: 3
  - title: Total Tracked Post Views - 1 month ago
    name: Total Tracked Post Views - 1 month ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_month
    type: single_value
    fields: [sum_of_page_views_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_1_month.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_month.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_1_month.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 6
    width: 6
    height: 3
  - title: Total Positive Reactions - 1 month ago
    name: Total Positive Reactions - 1 month ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_month
    type: single_value
    fields: [sum_of_positive_reactions_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_1_month.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_month.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_1_month.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 12
    width: 6
    height: 3
  - title: Total Comments - 1 month ago
    name: Total Comments - 1 month ago
    model: rudder_devto_metrics
    explore: devto_post_performance_1_month
    type: single_value
    fields: [sum_of_comments_count]
    limit: 500
    dynamic_fields: [{measure: sum_of_page_views_count, based_on: devto_post_performance_1_month.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance_1_month.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_comments_count, based_on: devto_post_performance_1_month.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 18
    width: 6
    height: 3
  - title: Post Views
    name: Post Views
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.simplesentat_time, sum_of_page_views_count, sum_of_positive_reactions_count,
      sum_of_comments_count, devto_post_performance.count]
    sorts: [devto_post_performance.simplesentat_time desc]
    limit: 5000
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Post Views, orientation: left, series: [{axisId: sum_of_page_views_count,
            id: sum_of_page_views_count, name: Sum of Page Views Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    discontinuous_nulls: false
    defaults_version: 1
    hidden_fields: [sum_of_positive_reactions_count, sum_of_comments_count, devto_post_performance.count]
    row: 9
    col: 6
    width: 6
    height: 6
  - title: Post Count
    name: Post Count
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.simplesentat_time, devto_post_performance.count,
      sum_of_page_views_count, sum_of_positive_reactions_count, sum_of_comments_count]
    sorts: [devto_post_performance.simplesentat_time desc]
    limit: 5000
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Post Count, orientation: left, series: [{axisId: devto_post_performance.count,
            id: devto_post_performance.count, name: Devto Post Performance}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [sum_of_page_views_count, sum_of_positive_reactions_count, sum_of_comments_count]
    row: 9
    col: 0
    width: 6
    height: 6
  - title: Positive Reactions
    name: Positive Reactions
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.simplesentat_time, sum_of_positive_reactions_count,
      devto_post_performance.count, sum_of_page_views_count, sum_of_comments_count]
    sorts: [devto_post_performance.simplesentat_time desc]
    limit: 5000
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Positive Reactions, orientation: left, series: [{axisId: sum_of_positive_reactions_count,
            id: sum_of_positive_reactions_count, name: Sum of Positive Reactions Count}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [sum_of_page_views_count, sum_of_comments_count, devto_post_performance.count]
    row: 9
    col: 12
    width: 6
    height: 6
  - title: Comments
    name: Comments
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.simplesentat_time, sum_of_comments_count, devto_post_performance.count,
      sum_of_page_views_count, sum_of_positive_reactions_count]
    sorts: [devto_post_performance.simplesentat_time desc]
    limit: 5000
    dynamic_fields: [{measure: sum_of_comments_count, based_on: devto_post_performance.comments_count,
        expression: '', label: Sum of Comments Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_page_views_count, based_on: devto_post_performance.page_views_count,
        expression: '', label: Sum of Page Views Count, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_positive_reactions_count, based_on: devto_post_performance.positive_reactions_count,
        expression: '', label: Sum of Positive Reactions Count, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Comments, orientation: left, series: [{axisId: sum_of_comments_count,
            id: sum_of_comments_count, name: Sum of Comments Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [sum_of_page_views_count, devto_post_performance.count, sum_of_positive_reactions_count]
    row: 9
    col: 18
    width: 6
    height: 6
