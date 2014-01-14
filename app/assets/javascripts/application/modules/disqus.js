var DISQUS;
var disqus_shortname = "fabiomr";

loadDisqus = function() {
  if (DISQUS == undefined) {
    var dsq = $("<script type='text/javascript' async='' src='//" + disqus_shortname + ".disqus.com/embed.js'></script>");
    $("head").append(dsq);
  } else {
    DISQUS.reset({
      reload: true,
      config: function () {
        this.page.identifier = "disqus_thread";
        this.page.url = window.location.href;
      }
    });
  }
}
