var GistTurbolinks;

GistTurbolinks = {
  get_gist: function($gist) {
    var callback_name, script;
    callback_name = "c" + (Math.random().toString(36).substring(7));
    window[callback_name] = function(gist_data) {
      var html;
      delete window[callback_name];
      html = '<link rel="stylesheet" href="https://gist.github.com' + encodeURI(gist_data.stylesheet) + '"></link>';
      html += gist_data.div;
      $gist.html(html);
      return script.parentNode.removeChild(script);
    };
    script = document.createElement("script");
    script.setAttribute("src", [
      $gist.data("src"), $.param({
        callback: callback_name,
        file: $gist.data("file") || ""
      })
    ].join("?"));
    return document.body.appendChild(script);
  },

  load: function() {
    var $this;
    $this = this;
    return $(".gist").each(function() {
      return $this.get_gist($(this));
    });
  }
};

$(document).ready(function() {
  return GistTurbolinks.load();
});

$(document).on('page:load', function() {
  return GistTurbolinks.load();
});
