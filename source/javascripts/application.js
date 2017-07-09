function displaySection(name) {
  console.log("displaying section", name);
  $("section").css("display", "none");
  $("section#" + name).slideDown(750);
}

jQuery(document).ready(function() {
  active_class();

  $(".link a").click(function(e) {
    if ($(this).attr("href")[0] == "#") {
      var current = $(this).attr("href").replace(/\#/, "");
      $(".link .active").removeClass("active");
      displaySection(current);
      $(this).addClass("active");
    }
  });

  $(".hamburger").click(function(e) {
    e.preventDefault();
    var menu = $(".nav-menu-container").css("left");
    var header = $(".nav-menu-container");
    var fade = $(".fade-screen");
    if (menu != "0px") {
      header.animate(
        {
          left: "0"
        },
        500
      );
      fade.css("display", "block");
    } else {
      header.animate(
        {
          left: "-100%"
        },
        500
      );
      fade.css("display", "none");
    }
  });

  $(window).resize(function() {
    windowWidth = $(window).width();
    var fadeblock = $(".fade-screen").css("display");
    var menu = $(".nav-menu-container");
    if (windowWidth > 993) {
      if (fadeblock == "block") {
        $(".fade-screen").css("display", "none");
      }
      menu.css("left", "0");
    } else {
      if (menu.css("left") == "0px" && windowWidth > 767) {
        menu.css("left", "-100%");
        $(".fade-screen").css("display", "none");
      }
    }
  });

  var current = location.hash.replace(/\#/, "");
  if (current !== "") {
    displaySection(current);
  }
});

var active_class = function() {
  var x = $(".link").length;
  var url = window.location.href;

  for (var i = 0; i < x; i++) {
    var linkUrl = $("ul:nth-child(2) a")[i].href;
    if (linkUrl == url) {
      var current = $("ul:nth-child(2) a")[i];
      $(current).addClass("active");
    }
  }
};

// SEGMENT
!(function() {
  var analytics = (window.analytics = window.analytics || []);
  if (!analytics.initialize)
    if (analytics.invoked)
      window.console &&
        console.error &&
        console.error("Segment snippet included twice.");
    else {
      analytics.invoked = !0;
      analytics.methods = [
        "trackSubmit",
        "trackClick",
        "trackLink",
        "trackForm",
        "pageview",
        "identify",
        "reset",
        "group",
        "track",
        "ready",
        "alias",
        "debug",
        "page",
        "once",
        "off",
        "on"
      ];
      analytics.factory = function(t) {
        return function() {
          var e = Array.prototype.slice.call(arguments);
          e.unshift(t);
          analytics.push(e);
          return analytics;
        };
      };
      for (var t = 0; t < analytics.methods.length; t++) {
        var e = analytics.methods[t];
        analytics[e] = analytics.factory(e);
      }
      analytics.load = function(t) {
        var e = document.createElement("script");
        e.type = "text/javascript";
        e.async = !0;
        e.src =
          ("https:" === document.location.protocol ? "https://" : "http://") +
          "cdn.segment.com/analytics.js/v1/" +
          t +
          "/analytics.min.js";
        var n = document.getElementsByTagName("script")[0];
        n.parentNode.insertBefore(e, n);
      };
      analytics.SNIPPET_VERSION = "4.0.0";
      analytics.load("ROnrTaBTGjSIuY3mA9KJwGye1xJACzSl");
      analytics.page();
    }
})();
