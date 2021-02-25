- dashboard: devto_post_performance
  title: dev.to Post Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: All Posts
    name: All Posts
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
    row: 0
    col: 0
    width: 24
    height: 6
  - title: Views Over Time
    name: Views Over Time
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.page_views_count, devto_post_performance.simplesentat_time,
      devto_post_performance.positive_reactions_count, devto_post_performance.comments_count,
      devto_post_performance.title]
    filters: {}
    sorts: [devto_post_performance.simplesentat_time desc, devto_post_performance.title]
    limit: 5000
    column_limit: 50
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
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    note_state: expanded
    note_display: above
    note_text: Select post from dashboard filter
    listen:
      Post Title: devto_post_performance.title
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Positive Reactions Over Time
    name: Positive Reactions Over Time
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.positive_reactions_count, devto_post_performance.simplesentat_time,
      devto_post_performance.page_views_count, devto_post_performance.comments_count,
      devto_post_performance.title]
    filters: {}
    sorts: [devto_post_performance.simplesentat_time desc, devto_post_performance.title]
    limit: 5000
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
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    note_state: expanded
    note_display: above
    note_text: Select post from dashboard filter
    listen:
      Post Title: devto_post_performance.title
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Comments Over Time
    name: Comments Over Time
    model: rudder_devto_metrics
    explore: devto_post_performance
    type: looker_line
    fields: [devto_post_performance.comments_count, devto_post_performance.simplesentat_time,
      devto_post_performance.page_views_count, devto_post_performance.positive_reactions_count,
      devto_post_performance.title]
    filters: {}
    sorts: [devto_post_performance.simplesentat_time desc, devto_post_performance.title]
    limit: 5000
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
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    note_state: expanded
    note_display: above
    note_text: Select post from dashboard filter
    listen:
      Post Title: devto_post_performance.title
    row: 6
    col: 16
    width: 8
    height: 6
  filters:
  - name: Post Title
    title: Post Title
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: rudder_devto_metrics
    explore: devto_post_performance
    listens_to_filters: []
    field: devto_post_performance.title
