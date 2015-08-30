window.Membership =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    console.log 'loading membership.js.coffee'
    @AllMembers = new @Collections.Members
    @AllMembers.fetch().done =>
      new @Routers.MembershipRouter()
      Backbone.history.start(pushState: true)

# Site wide alias for ease of typing
window.App = window.Membership

$(document).ready ->
  Membership.initialize()
