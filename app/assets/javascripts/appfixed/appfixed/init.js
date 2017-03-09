var init_playing_complete;

function init_dragdrop_links() {
    console.log("INIT_DRAGDROP_LINKS");
    $('#playing-playlist').addClass('black');
    $('#left-side').droppable({
	hoverClass: "drop-highlight",
	tolerance: 'touch',
	accept: '.playable',
	revert: true,
	drop: function( event, ui) {
            console.log("DO DROP");
	}
    });
    $('#main').find('.hits').find('.playable').draggable({
	revert: true,
	disabled: false,
        start: function(event,ui) {
            //console.log("draggable.start: " + $(this).attr('id'));
            ui.helper.width(300);
            ui.helper.addClass('ui-corner-all');
	},
        delay: 500,
        helper: 'clone',
        appendTo: '#playlists',
	containment: 'parent',
	appendTo: 'body',
	opacity: 0.99
    }).disableSelection();
}

function init_playing() {
    console.log("init_playing()");
    $('body').on('trackplayer', function(event,ui) {
        var si = ui.sound_info;
        if(si) {
            node_el_id = si.node_id;
            node_id = node_el_id.replace(/^.*-/,'');
            console.log("setting cookie active_id=" + node_id);
            $.cookie('active_id', node_id, { expires: 7, path: '/' });
        }
    });


    $('#playing-playlist').load('/list_nodes',function() {
        init_sortables();
        $(this).find('.listnode-header.depth1').live('click',function() {
	    $(this).next().toggle('fast');
	    return false;
        }).next().hide();
    });
    $('#playing-playlist').on('playlistchanged', function() {
        console.log("CAUGHT playlistchanged");
        
    });
    $('#playing-playlist').on('trackplayer', function(event,ui) {
        var si = ui.sound_info;
        if(si) {
            node_id = si.node_id;
            console.log("got trackplayer node_id = " + node_id);
            $('.AudioFile.playing').removeClass('playing');
            $('#' + node_id).addClass('playing');
        }
    });
    
    
}
function load_playlist() {
    console.log("load_playlist()");
    $.ajax({
        url: '/list_nodes',
        statusCode: {
            422: function() {
                $('#playing-playlist').load("/users/sign_in",function() {
                    
                });;
            }
        }
    }).done(function(data,textStatus,jqXHR) {
        $('#playing-playlist').html(data).playlist();
    });

}


$(document).ready(function() {
    load_playlist();
    init_page_links();
    init_dragdrop_links();
    //init_tabs();
    $('.dropdown-toggle').dropdown();
    $('.search-controls button').button();
});
