# This is just a dead simple router for the client.
# There are no redirects, mixins, middlewares, etc.

# first page needs to fire
# and we need a 404 warning for route not found

Router = 
  route: (path, callback) ->
    page path, (context, next) ->
      queryParams = qs.parse(context.querystring)
      params = context.params
      hash = context.hash
      callback(params, queryParams, hash)
      # next()

  go: (path) ->
    page(path)

Meteor.startup ->
  page({decodeURLComponents: true})