Package.describe({
  name: 'ccorcos:client-router',
  summary: 'A very simple router for a Meteor client',
  version: '0.0.1',
  git: 'https://github.com/ccorcos/meteor-client-router'
});

Npm.depends({
  'page':'1.6.3',
    'qs':'3.1.0'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');

  api.use('coffeescript', 'client');
  api.use('cosmos:browserify@0.3.0', 'client');

  api.addFiles('client.browserify.js', 'client');  
  api.addFiles('router.coffee', 'client');

  api.export('Router');
});
