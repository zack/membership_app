class db.TeamsTableRowView extends Marionette.ItemView
  template: ich.teams_table_row
  tagName: 'tr'
  className: 'team_table_row_view'
  templateHelpers: ->
    team_info: @_get_team_info

  initialize: (options) ->
    @table_headers = options.table_headers

  _get_team_info: =>
    info = {}
    _.each @table_headers, (h) =>
      value = db.Helpers.clean_table_value @model.get(h)
      info[h] = value
    info
