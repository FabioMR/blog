var DISQUS;
var DisqusLoader;

DisqusLoader = {
  load: function() {
    if (DISQUS == undefined) {
      var dsq = $("<script type='text/javascript' async='' src='//fabiomr.disqus.com/embed.js'></script>");
      $("head").append(dsq);
    } else {
      DISQUS.reset({reload: true});
    }
  }
};
