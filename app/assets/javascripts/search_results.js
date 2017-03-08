
function show_search_results(parms) {
    var url = '/home/search_results';
    var params = { q: parms.q };
    $.get(url,params,function(data,textStatus) {
        console.log("search status=" + textStatus + " url=" + url);
        $('#search-results').html(data);
        // bind_content_click();
        // init_sr_hover();
        // init_sr_links();
        // wf_history(params);
    });
}

function update_location(params) {
    history.replaceState({ q: params.q } , null, 'home?q=' + params.q);
}

function init_query_click() {
    $('#search-form button').on('click', function(e) {
        e.preventDefault();
        var query = $('#search-form input').val();
        var params = { q: query };
        show_search_results(params);
        update_location(params);
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

 


