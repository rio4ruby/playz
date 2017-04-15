function announce_player() {
    $(window).unload(function() {
        console.log("WINDOW CLOSE: " + window.name);
        $.cookie('playit-player', null, { expires: 7, path: '/' });
    });
    $.cookie('playit-player', window.name, { expires: 7, path: '/' });
}



$(document).ready(function() {
    console.log("Hello from player_messages.js, My name is: " + window.name + ".");
    init_player();
});

function init_player() {
    $("body").eventposter({
        local_type: "playermessage",
        remote_type: "controlmessage",
        local_events: ['playplayer', 'pauseplayer', 'trackplayer', 'sm2ready', 'closingplayer' ]
    });

    var ctls = $.cookie('playit-control');
    var clients = ctls ? JSON.parse(ctls) : {};
    console.log("init_player: " + clients)
    var client_names = [];
    for( client in clients ) {
        var win = window.open("",client);
        window.register_win(win);
    }
    announce_player();
}

