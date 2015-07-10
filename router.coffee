# This is just a dead simple router for the client.
# There are no redirects, mixins, middlewares, etc.

# first page needs to fire
# and we need a 404 warning for route not found

Router = 
  route: (name, callback) ->
    page name, (context, next) ->
      queryParams = qs.parse(context.querystring)
      {params, hash, path} = context
      callback({params, queryParams, hash, name, path})
  go: (path) -> page(path)
  redirect: (path) -> page.redirect(path)
  back: -> page.back()

Meteor.startup ->
  page({decodeURLComponents: true})