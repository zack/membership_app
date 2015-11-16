class db.MembershipRouter extends Marionette.AppRouter

  routes:
    ''            : 'members'
    'members'     : 'members'
    'members/'    : 'members'
    'members/:id' : 'member'

  members: ->
    db.app.app_region.show(
      new db.MembersTableView
        collection: db.members)

  member: (id) ->
    db.app.app_region.show(
      new db.MemberView
        model: db.members.get(id))
