
function init_playlists_albums() {
    $('.playlists .listhead>.playlist-col>.album>.playlist-col>.playlist-elem').on('click', function(e) {
        console.log('CLICK');
        //$(e.target).next().toggle();
        $(this).siblings('.audiofile').toggle();
    });
}

$(document).ready(function() {
    init_playlists_albums();
});
