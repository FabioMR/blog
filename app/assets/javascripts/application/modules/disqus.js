var DISQUS;
var disqus_shortname = "fabiomr";

loadDisqus = function() {
  if (DISQUS == undefined) {
    var dsq = $("<script type='text/javascript' async='' src='//" + disqus_shortname + ".disqus.com/embed.js'></script>");
    $("head").append(dsq);
  } else {
    DISQUS.reset({reload: true});
  }
}
