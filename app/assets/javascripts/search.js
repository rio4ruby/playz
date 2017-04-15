(function ($) {
    $.each(['show', 'hide'], function (i, ev) {
	var el = $.fn[ev];
	$.fn[ev] = function () {
	    this.trigger(ev);
	    return el.apply(this, arguments);
	};
    });
})(jQuery);


$(document).ready(function() {
    // console.log($.querystring.q);
    // $('#search-form').on('show', function() {
    //     $('#search-form').html('<h3>Search Form Show</h3>');
    // });
    //show_search_results($.querystring.q);
    //init_query_click();
    //init_watchfield();
    //init_popstate();
    //$('#search-form input').val($.querystring.q);
});
