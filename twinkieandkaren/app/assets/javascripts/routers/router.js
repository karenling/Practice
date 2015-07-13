Twinkieandkaren.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index"
  },

  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.posts = new Twinkieandkaren.Collections.Posts();
  },

  index: function () {
    this.posts.fetch();
    var indexView = new Twinkieandkaren.Views.PostsIndex({
      posts: this.posts
    });
    this._swapView(indexView);
  },

  _swapView: function (newView) {
    this._currentView && this._currentView.remove();
    this.currentView = newView;
    this.$rootEl.html(newView.$el);
    newView.render();
  }
});
