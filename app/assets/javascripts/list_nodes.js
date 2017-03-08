
function update_cb(event,ui) {
    console.log('.listnode-content sortable update');
    console.log('  item is: ' + ui.item.attr('id') + ' parent is: ' + ui.item.parent().closest('.listnode-elem').attr('id') + " index=" + ui.item.index());
    var data = {
        item: ui.item.attr('id'),
        list: ui.item.parent().closest('.listnode-elem').attr('id'),
        index: ui.item.index()
    };
    $.getJSON("/list_nodes/move_to",data);
    
}
function init_sortables() {
    $('.ListHead.listnode-content').sortable({
        create: function(event, ui) {
            console.log('.ListHead.listnode-content sortable created');
        },
        update: update_cb,
        items: '> .listnode-elem',
        axis: 'y',
        //containment: 'parent',
        forcePlaceholderSize: true,
        placeholder: 'listnode-sortable-placeholder',
        delay: 500
        
        
    }).disableSelection();
    $('.Album.listnode-content').sortable({
        create: function(event, ui) {
            console.log('.Album.listnode-content sortable created');
        },
        update: update_cb,
        items: '> .listnode-elem',
        axis: 'y',
        //containment: 'parent',
        forcePlaceholderSize: true,
        placeholder: 'listnode-sortable-placeholder',
        connectWith: '.ListHead.listnode-content',
        delay: 500
        
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
    //load_playlist();
    // load_playing_wiki();
    // $('.dropdown-toggle').dropdown();
    // $('.search-controls button').button();
});
