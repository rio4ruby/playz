$(document).ready(function() {
    console.log('INIT READY');
    // $.ajax({
    //     url: '/home/home'
    // }).done( function(data, textStatus, jqXHR) {
    //     $('#home-page').html(data);
        
    // });
    // $('#home-page').load('/home/home');
    // $('#home-page').html('<h4>Home</h4>');
    // $('#search-page').load('/home/search');
    // $('#search-page').html('<h4>Search</h4>');
    $.ajax({
        url: '/home/search_form'
    }).done( function(data, textStatus, jqXHR) {
        $('#search-form-page').html(data);
        init_watchfield();
        init_query_click();
        $('#search-form input').val($.querystring.q);
    });

    $.ajax({
        url: '/home/search'
    }).done( function(data, textStatus, jqXHR) {
        $('#search-page').html(data);
        show_search_results();
    });
    // $('#playlist-page').load('/home/playlist');
    // $('#playlist-page').html('<h4>Playlist</h4>');
    $.ajax({
        url: '/home/playlist'
    }).done( function(data, textStatus, jqXHR) {
        $('#playlist-page').html(data);
        load_playlist();
    });
});
