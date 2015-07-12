window.Twinkieandkaren = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var router = new Twinkieandkaren.Routers.Router({
      $rootEl: $('#content')
    });
    Backbone.history.start();
    // alert('Hello from Backbone!');
  }
};

$(document).ready(function(){
  Twinkieandkaren.initialize();
});
