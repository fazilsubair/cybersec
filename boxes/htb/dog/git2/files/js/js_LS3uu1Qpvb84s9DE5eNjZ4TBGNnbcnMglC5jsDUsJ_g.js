/**
 * @file
 * Some basic behaviors and utility functions for Views.
 */
(function ($) {

Backdrop.Views = {};

/**
 * Helper function to parse a querystring.
 */
Backdrop.Views.parseQueryString = function (query) {
  var args = {};
  var pos = query.indexOf('?');
  if (pos != -1) {
    query = query.substring(pos + 1);
  }
  var pair;
  var pairs = query.split('&');
  for (var i = 0; i < pairs.length; i++) {
    pair = pairs[i].split('=');
    // Ignore the 'q' path argument, if present.
    if (pair[0] !== 'q' && pair[1]) {
      args[decodeURIComponent(pair[0].replace(/\+/g, ' '))] = decodeURIComponent(pair[1].replace(/\+/g, ' '));
    }
  }
  return args;
};

/**
 * Helper function to return a view's arguments based on a path.
 */
Backdrop.Views.parseViewArgs = function (href, viewPath) {
  var returnObj = {};
  var path = Backdrop.Views.getPath(href);
  // Ensure we have a correct path.
  if (viewPath && path.substring(0, viewPath.length + 1) == viewPath + '/') {
    var args = decodeURIComponent(path.substring(viewPath.length + 1, path.length));
    returnObj.view_args = args;
    returnObj.view_path = path;
  }
  return returnObj;
};

/**
 * Strip off the protocol plus domain from an href.
 */
Backdrop.Views.pathPortion = function (href) {
  // Remove e.g. http://example.com if present.
  var protocol = window.location.protocol;
  if (href.substring(0, protocol.length) == protocol) {
    // 2 is the length of the '//' that normally follows the protocol
    href = href.substring(href.indexOf('/', protocol.length + 2));
  }
  return href;
};

/**
 * Return the Backdrop path portion of an href.
 */
Backdrop.Views.getPath = function (href) {
  href = Backdrop.Views.pathPortion(href);
  href = href.substring(Backdrop.settings.basePath.length, href.length);
  // 3 is the length of the '?q=' added to the url without clean urls.
  if (href.substring(0, 3) == '?q=') {
    href = href.substring(3, href.length);
  }
  var chars = ['#', '?', '&'];
  for (i = 0; i < chars.length; i++) {
    if (href.indexOf(chars[i]) > -1) {
      href = href.substr(0, href.indexOf(chars[i]));
    }
  }
  return href;
};

})(jQuery);
;
/**
 * @file
 * Handles AJAX fetching of views, including filter submission and response.
 */
(function ($) {

/**
 * Attaches the AJAX behavior to Views exposed filter forms and key View links.
 */
Backdrop.behaviors.ViewsAjaxView = {};
Backdrop.behaviors.ViewsAjaxView.attach = function() {
  if (Backdrop.settings && Backdrop.settings.views && Backdrop.settings.views.ajaxViews) {
    $.each(Backdrop.settings.views.ajaxViews, function(i, settings) {
      Backdrop.views.instances[i] = new Backdrop.views.ajaxView(settings);
    });
  }
};
/**
 * Removes configuration and state from the page when a view is removed.
 */
  Backdrop.behaviors.ViewsAjaxView.detach = function(context) {
  if (Backdrop.settings && Backdrop.settings.views && Backdrop.settings.views.ajaxViews) {
    $.each(Backdrop.settings.views.ajaxViews, function(i, settings) {
      var $removedView = $('.view-dom-id-' + settings.view_dom_id, context);
      if ($removedView.length) {
        delete Backdrop.settings.views.ajaxViews[i];
        delete Backdrop.views.instances[i];
      }
    });
  }
}

Backdrop.views = {};
Backdrop.views.instances = {};

/**
 * Javascript object for a certain view.
 */
Backdrop.views.ajaxView = function(settings) {
  var selector = '.view-dom-id-' + settings.view_dom_id;
  this.$view = $(selector);

  // Retrieve the path to use for views' ajax.
  var ajax_path = Backdrop.settings.views.ajax_path;

  // If there are multiple views this might've ended up showing up multiple times.
  if (ajax_path.constructor.toString().indexOf("Array") != -1) {
    ajax_path = ajax_path[0];
  }

  // Check if there are any GET parameters to send to views.
  var queryString = window.location.search || '';
  if (queryString !== '') {
    // Remove the question mark and Backdrop path component if any.
    queryString = queryString.slice(1).replace(/q=[^&]+&?|&?render=[^&]+/, '');
    if (queryString !== '') {
      // If there is a '?' in ajax_path, clean url are on and & should be used to add parameters.
      queryString = ((/\?/.test(ajax_path)) ? '&' : '?') + queryString;
    }
  }

  this.element_settings = {
    url: ajax_path + queryString,
    submit: settings,
    setClick: true,
    event: 'click',
    selector: selector,
    progress: { type: 'throbber' }
  };

  this.settings = settings;

  // Add the ajax to exposed forms.
  this.$exposed_form = $('form#views-exposed-form-'+ settings.view_name.replace(/_/g, '-') + '-' + settings.view_display_id.replace(/_/g, '-'));
  this.$exposed_form.once(jQuery.proxy(this.attachExposedFormAjax, this));

  // Add the ajax to pagers.
  this.$view
    // Don't attach to nested views. Doing so would attach multiple behaviors
    // to a given element.
    .filter(jQuery.proxy(this.filterNestedViews, this))
    .once(jQuery.proxy(this.attachPagerAjax, this));

  // In order to trigger a refresh, use the following code:
  // @code
  // jQuery('.view-name').trigger('RefreshView');
  // @endcode
  //
  // Add a trigger to update this view specifically.
  var self_settings = this.element_settings;
  self_settings.event = 'RefreshView';
  this.refreshViewAjax = new Backdrop.ajax(this.selector, this.$view[0], self_settings);
};

Backdrop.views.ajaxView.prototype.attachExposedFormAjax = function() {
  var button = $('input[type=submit], button[type=submit], input[type=image]', this.$exposed_form);
  button = button[0];

  this.exposedFormAjax = new Backdrop.ajax($(button).attr('id'), button, this.element_settings);
};

Backdrop.views.ajaxView.prototype.filterNestedViews= function() {
  // If there is at least one parent with a view class, this view
  // is nested (e.g., an attachment). Bail.
  return !this.$view.parents('.view').length;
};

/**
 * Attach the ajax behavior to each link.
 */
Backdrop.views.ajaxView.prototype.attachPagerAjax = function() {
  this.$view.find('ul.pager > li > a, th.views-field a, .attachment .views-summary a')
  .each(jQuery.proxy(this.attachPagerLinkAjax, this));
};

/**
 * Attach the ajax behavior to a singe link.
 */
Backdrop.views.ajaxView.prototype.attachPagerLinkAjax = function(id, link) {
  var $link = $(link);
  var viewData = {};
  var href = $link.attr('href');
  // Construct an object using the settings defaults and then overriding
  // with data specific to the link.
  $.extend(
    viewData,
    this.settings,
    Backdrop.Views.parseQueryString(href),
    // Extract argument data from the URL.
    Backdrop.Views.parseViewArgs(href, this.settings.view_base_path)
  );

  // For anchor tags, these will go to the target of the anchor rather
  // than the usual location.
  $.extend(viewData, Backdrop.Views.parseViewArgs(href, this.settings.view_base_path));

  this.element_settings.submit = viewData;
  this.pagerAjax = new Backdrop.ajax(false, link, this.element_settings);
};

Backdrop.ajax.prototype.commands.viewsScrollTop = function (ajax, response) {
  // Scroll to the top of the view. This will allow users
  // to browse newly loaded content after e.g. clicking a pager
  // link.
  var offset = $(response.selector).offset();

  // We can't guarantee that the scrollable object should be
  // the body, as the view could be embedded in something
  // more complex such as a modal popup. Recurse up the DOM
  // and scroll the first element that has a non-zero top.
  var scrollTarget = response.selector;
  while ($(scrollTarget).scrollTop() == 0 && $(scrollTarget).parent()) {
    scrollTarget = $(scrollTarget).parent();
  }
  // Only scroll upward
  if (offset.top - 10 < $(scrollTarget).scrollTop()) {
    $(scrollTarget).animate({scrollTop: (offset.top - 10)}, 500);
  }
};

})(jQuery);
;
