Session.set("result", null)

Router.route '/', (obj) ->
  console.log "home", JSON.stringify(obj)
  Session.set("result", "home #{JSON.stringify(obj)}")

Router.route '/profile/', (obj) ->
  console.log "profile", JSON.stringify(obj)
  Session.set("result", "profile @JSON.stringify(obj)")

Router.route '/profile/:id', (obj) ->
  console.log "profile ", JSON.stringify(obj)
  Session.set("result", "profile #{JSON.stringify(obj)}")

Router.route '*', (obj) ->
  console.log "not found", JSON.stringify(obj)
  Session.set("result", "not found @JSON.stringify(obj)")


Template.main.helpers
  result: () ->
    Session.get("result")

Template.main.events
  'click button': () ->
    Router.go('/')