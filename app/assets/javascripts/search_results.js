
function get_params(parms) {
    return {
        q: (parms ? parms.q : $.querystring.q),
        page: (parms ? parms.page : $.querystring.page),
        per: (parms ? parms.per : $.querystring.per)
    };
}

function show_search_results(parms) {
    var url = '/home/search_results';
    var params = get_params(parms);
    $.get(url,params,function(data,textStatus) {
        console.log("search status=" + textStatus + " url=" + url);
        $('#search-results').html(data);
        init_page_clicks();
        // bind_content_click();
        // init_sr_hover();
        // init_sr_links();
        // wf_history(params);
    });
}

function update_location(params) {
    console.log(params,$.param(params));
    history.replaceState(params , null, '?' + $.param(params));
}

function init_query_click() {
    $('#search-form button').on('click', function(e) {
        e.preventDefault();
        var query = $('#search-form input').val();
        var params = get_params();
        show_search_results(params);
        update_location(params);
    });
}

function init_page_clicks() {
    $('#search-results .pagination .page-link').on('click', function(e) {
        e.preventDefault();
        var url = $(this).attr('href');
        console.log("CLICK .page-link" + " url=" + url, $.querystring);
        $('#search-results').load(url,function(data,textStatus) {
            console.log("search status=" + textStatus + " url=" + url, queryobject(url));
            init_page_clicks();
            update_location(queryobject(url));
        });
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
	delay : 450,
	changed : function(event,ui) {
            var params = { q: $(this).val() };
            show_search_results(params);
            update_location(params);
        }
    });
}

 


