// cases
// control window with no player window
// CONTROL WINDOW OPENS WITH PLAYER WINDOW OPEN
//   control window connects with player window
//      control window eventposter initialized
//      control window adds itself as player window target
//      control window adds player window as target
//      button changed to 'close'
//
// CONTROL WINDOW OPENS PLAYER WINDOW
//   when ready, player window connects with control window
//      player_window adds itself as control window target
//      player_window adds control window as target
//      player_window eventposter initialized
//      control_window eventposter initialized
//      control window button changed to 'close'
//
// PLAYER WINDOW OPENED WHILE MULTIPLE CONTROL WINDOWS OPEN
//   must be able to find all control clients 
//
//
//
// CONTROL WINDOW CLOSES WITH PLAYER WINDOW OPEN
//   control window disconnects from player window
//      player window unregisters control window
//
// PLAYER WINDOW CLOSES WITH CONTROL WINDOW OPEN
//   all control windows change buttons to 'open'
//   player window unregisterd from all control windows

var playerwin;
function open_window() {
    var miniwin = window.open ("/players/simple","mini","location=no,resizable=1,width=450,height=200");
    playerwin = miniwin;
    window.register_win(miniwin);
    return miniwin;
}
function init_poster() {
  $("body").eventposter({
        local_type: "controlmessage",
        remote_type: "playermessage",
        local_events: ['playcontrol', 'pausecontrol','trackcontrol','playlistchanged']
  });
}
function get_player_win() {
   var player_name = $.cookie('playit-player');
    console.log('PLAYIT-PLAYER IS ' + player_name);
    if( player_name ) {
        return window.open ("",player_name);
    }
    return null;
}
function init_control() {
    $('body').announcer();
    init_poster();
    var player_win = get_player_win();
    if( player_win ) {
        after_player_win(player_win);
        $("#open-window-button").trigger('playeropened');
    }
}

function after_player_win(playerwin) {
    cross_register(playerwin);
}



function bind_open_window_button() {
    $("#open-window-button").bind('playeropened',function () {
        console.log("#open-window-button caught playeropened")
        $(this).button('playeropened');
        $(this).removeClass('btn-primary');
        $('#playing-playlist').addClass('player-win-opened');
        $(this).one('click', function() {
            playerwin.close();
            $('#playing-playlist').removeClass('player-win-opened');
        });
    });
    $("#open-window-button").one('click',function () {
        console.log("#open-window-button CLICK");
        $(this).button('loading');
        $(this).one('sm2ready',function () {
            console.log("#open-window-button sm2ready");
            $(this).trigger('playeropened');
        });
        $(this).one('closingplayer',function () {
            console.log("#open-window-button closingplayer");
            $(this).button('reset');
            $(this).addClass('btn-primary');
            bind_open_window_button();
        });
        open_window();
    });


}
var open_window_init_done = false;
function open_window_init() {
    console.log("document ready");
    console.log("window.name is " + window.name);
    $('#open-window-button').button();
    bind_open_window_button();
    init_control();
    
}



$(document).ready(function() {
    if(! open_window_init_done) {
        open_window_init_done = true;
        $('#open-window-button').playerwindowbutton();
        //open_window_init();
    }

});

