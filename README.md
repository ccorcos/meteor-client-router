# Meteor Client Router

This is a very simple router for Meteor clients. I didn't want a router that does subscriptions, fancy redirects, etc. I just wanted a router that calls a function and lets me do all the rest.

## Getting Started

    meteor add ccorcos:client-router

Define some routes:

#### `Router.route(pattern, callback)`

Pattern describes the route using [page.js](https://www.npmjs.com/package/page) pattern syntax.
The callback function has 3 arguments, `params`, `queryParams` and `hash`. 

#### `Router.go(path)`

This takes you to a route.

#### `Router.back()`

This takes you back.