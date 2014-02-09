var MyApp = {
  before: function() {
    Analytics.load();
  }
};

Dispatcher.turbolinks(MyApp);
