var init_playing_complete;
function init_nodeplayer() {
    console.log("init_nodeplayer");
    $('#the-player').smplayer({
        sm2ready: function() {
            console.log("#the-player: sm2ready()");
            $('.sm2ready').trigger('sm2ready');
            $('.player-position-slider').playslider({
                max: 100,
                value: 48
            });
            $('#myCarousel').nodeplayer({
                trackselected: function(event,ui) {
                    console.log("TRACK SELECTED: id=" + ui.sound_info.sound_id + " artist='" + ui.sound_info.artist + "'");
                },
                finish: function(event,ui) {
                    //var href = $('.player-button-next .player-link').attr('href');
                    //load_bottom(href,{ doplay: true });
                    //$.get(href,{doplay:true});
                    //$.event.trigger('playcontrol');
                }
            });
            $('#myCarousel').playcarousel();
            
            // $.event.trigger('trackcontrol',{});
            // $('#myCarousel').carousel({
            //     interval: false
            // });
            // $('#myCarousel').on('slid',function() {
            //     console.log("carousel slid");
            //     $.event.trigger('trackcontrol',{});
            // });
            // $('#myCarousel').on('finishedplayer',function() {
            //     console.log("carousel caught finishedplayer");
            //     $(this).carousel('next');
            // });
            
            
        }
        
    });
}

function init_playing() {
    console.log("init_playing()");
    // $('.btn-play').toggle(function() {
    //     $(this).find('i').switchClass('icon-play','icon-pause');
    // },function() {
    //     $(this).find('i').switchClass('icon-pause','icon-play');
    // });

    $('.playbutton').playbutton();
    $('.prevbutton').click(function(e) {
        $('.prevcontrol').trigger('prevcontrol');
    });
    $('.nextbutton').click(function(e) {
        console.log('CLICK .nextbutton');
        e.preventDefault();
        $('.nextcontrol').trigger('nextcontrol');
    });
    $('.carousel-control-prev').click(function(e) {
        console.log('CLICK .carousel-control-prev');
        e.preventDefault();
        $('.prevcontrol').trigger('prevcontrol');
    });
    $('.carousel-control-next').click(function(e) {
        console.log('CLICK .carousel-control-next');
        e.preventDefault();
        $('.nextcontrol').trigger('nextcontrol');
    });
       
    $(window).unload(function() {
        $('.closingplayer').trigger('closingplayer');
    });

    $('#status').html("Player Ready");

    
    // Fake player
    // $('#the-player').bind('playcontrol',function() {
    //     console.log("FAKE PLAYER: caught playcontrol, triggering playplayer");
    //     $.event.trigger('playplayer');
    // });
    // $('#the-player').bind('pausecontrol',function() {
    //     console.log("FAKE PLAYER: caught plausecontrol, triggering pauseplayer");
    //     $.event.trigger('pauseplayer');
    // });

}

$(document).ready(function() {
    if(!init_playing_complete) {
        init_playing_complete = true;
        init_nodeplayer();
        init_playing();
    }
});
