new Vue({
  el: "#"
  data: {
    title, null,
    url: null,
    error: null
  },

  methods: {
    urlChanged: function() {
      loadPage();
    },

    loadPage: function() {
      var _this = this;
      $.ajax({
        url: window.loacation.origin + "/crawl/" + _this.url, //http://localhost:3000/crawl/http://the_url_trying_to_pass
        contentType: "application/json"
        dataType: "json"
      }).done(function(data) {
        _this.title = data.title;
        _this.error = null;
      }).fail(function(data) {
        _this.error = "something went wrong."
      }) ;
    }
  }
});
