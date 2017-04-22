
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
        init_query_links();
        // bind_content_click();
        // init_sr_hover();
        // init_sr_links();
        // wf_history(params);
    });
}

function update_location(params) {
    console.log(params,$.param(params));
    history.pushState(params , null, '?' + $.param(params));
    init_popstate();
}
function init_popstate() {
    $(window).on('popstate', function(e) {
        e.preventDefault();
        console.log('popstate');
        var state = e.originalEvent.state;
        console.log(state);
        console.log($.querystring);
        if( !state.q ) {
            state.q = $.querystring.q;
        }
        $('#search-form input').val(state.q);
        show_search_results(state);
        //var url = '/home?';
        //alert(e.data);

    });
}

function init_query_click() {
    $('#search-form button').on('click', function(e) {
        e.preventDefault();
        var query = $('#search-form input').val();
        var params = { q: query };
        console.log('init_query_click', params);
        show_search_results(params);
        update_location(params);
    });
}

function init_query_links() {
    $('.query-link').on('click', function(e) {
        e.preventDefault();
        var queryobj = queryobject($(this).attr('href'));
        $('#search-form input').val(queryobj.q);
        show_search_results(queryobj);
        update_location(queryobj);
    });
}

function init_page_clicks() {
    $('#search-results .nav-link').on('click', function(e) {
        e.preventDefault();
        var url = $(this).attr('href');
        console.log("CLICK .nav-link" + " url=" + url, $.querystring);
        $('#search-results').load(url,function(data,textStatus) {
            console.log("search status=" + textStatus + " url=" + url, queryobject(url));
            init_page_clicks();
            init_query_links();
            update_location(queryobject(url));
        });
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

 


