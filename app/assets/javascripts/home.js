function show_page(name, func) {
    var url = '/home/' + name;
    var params = $.querystring;
    var page_sel = '#' + name + '-page';
    $('.page').hide();
    $(page_sel).show();
    console.log("page size=" + $(page_sel).children().length);
    $('.nav-item').removeClass('active');
    $('#nav-link-' + name).parent().addClass('active');
    if( $(page_sel).children().length == 0 ) {
        $.get(url,params,function(data,textStatus) {
            console.log(name + " status=" + textStatus + " url=" + url + " params=" + params);
            $(page_sel).html(data);
            if( func ) {
                func.call(this);
            }
            // bind_content_click();
            // init_sr_hover();
            // init_sr_links();
            // wf_history(params);
        });
    }
}

function init_navclicks() {
    $('#nav-link-home').on('click', function(e) {
        console.log('nav-link-home');
        e.preventDefault();
        show_page('home');
    });
    $('#nav-link-search').on('click', function(e) {
        console.log('nav-link-search');
        e.preventDefault();
        show_page('search', function() {
            console.log('search complete');
            show_search_results($.querystring);
            init_query_click();
            init_watchfield();
            $('#search-form input').val($.querystring.q);
        });
    });
    $('#nav-link-playlist').on('click', function(e) {
        console.log('nav-link-playlist');
        e.preventDefault();
        show_page('playlist', function() {
            init_playlists_albums();
        });
    });
}


$(document).ready(function() {
    // console.log($.querystring.q);
    // init_navclicks();
    // //show_search_results($.querystring.q);
    // //init_query_click();
    // //init_watchfield();
    // //init_popstate();
    // $('#search-form input').val($.querystring.q);
});
