Session.set("result", null)

Router.route '/', (params, queryParams, hash) ->
  console.log "home"
  Session.set("result", "home")

Router.route '/profile/', (params, queryParams, hash) ->
  console.log "profile"
  Session.set("result", "profile")

Router.route '/profile/:id', (params, queryParams, hash) ->
  console.log "profile id:", params.id, "query:", queryParams, "hash:", hash
  Session.set("result", "profile id: #{params.id} query: #{JSON.stringify(queryParams)}, hash: #{hash}")

Router.route '*', (params, queryParams, hash) ->
  console.log "not found"
  Session.set("result", "not found")


Template.main.helpers
  result: () ->
    Session.get("result")

Template.main.events
  'click button': () ->
    Router.go('/')