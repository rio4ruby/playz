function show_search_results(query) {
    var url = '/home/search';
    var params = { q: query };
    $.get(url,params,function(data,textStatus) {
        console.log("search status=" + textStatus + " url=" + url);
        $('#search-results').html(data);
        // bind_content_click();
        // init_sr_hover();
        // init_sr_links();
        // wf_history(params);
    });
}

function update_location(query) {
    history.replaceState({ q: query } , null, 'home?q=' + query);
}

function init_query_click() {
    $('#search-form button').on('click', function(e) {
        e.preventDefault();
        var query = $('#search-form input').val();
        show_search_results(query);
        update_location(query);
    });
}

function init_popstate() {
    $(window).on('popstate', function(e) {
        console.log('popstate');
        //var state = e.originalEvent.state;
        //console.log(state);
        //var url = '/home?';
        //alert(e.data);

    });
}

function init_watchfield() {
    console.log("calling watchfield");
    $("#q").watchfield({
	name : "wf1",
	delay : 600,
	changed : function(event,ui) {
            show_search_results($(this).val());
            update_location($(this).val());
        }
    });
}


(function ($) {
    $.querystring = (function (a) {
        var i,
            p,
            b = {};
        if (a === "") { return {}; }
        for (i = 0; i < a.length; i += 1) {
            p = a[i].split('=');
            if (p.length === 2) {
                b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
            }
        }
        return b;
    }(window.location.search.substr(1).split('&')));
}(jQuery));

 
$(document).ready(function() {
    console.log($.querystring.q);
    show_search_results($.querystring.q);
    init_query_click();
    init_watchfield();
    //init_popstate();
    $('#search-form input').val($.querystring.q);
});
