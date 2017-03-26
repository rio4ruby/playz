function SoundInfo () {
}
SoundInfo.sound_info_from_element = function(el) {
    var obj = {};
    if( el.length ) {
	var playing_link = el.find('.audiofile-link');
	obj.url = playing_link.attr('href');
	obj.title = playing_link.text();
        var dur_el = el.find('.duration');
        var dur = dur_el.text().replace(/\s/,'');
        obj.duration = str2ms(dur);
        obj.position = 0;
        obj.artist = strip(el.find('.artist').text());
        obj.album = strip(el.find('.album').text());
        obj.song = strip(el.find('.song').text());
        obj.sound_id = el.find('.elem-data').attr('data-sound_id');
        obj.node_id = el.find('.listnode-elem').attr('id');
    }
    else {
        obj = SoundInfo.null_sound_info();
    }
    return obj;
};
SoundInfo.sound_info_to_element = function(el,si) {

    if( el.length ) {
	var playing_link = el.find('.audiofile-link');
	playing_link.attr('href',si.url);
	playing_link.text(si.title);

	el.find('.hit-af-id').text(si.sound_id);
	el.find('.hit-ln-id').text(si.node_id);
        el.find('.hit-af-duration').text(ms2str(si.duration));
        el.find('.hit-af-artist').text(si.artist);
        el.find('.hit-af-album').text(si.album);
        el.find('.hit-af-song').text(si.song);

        var nid = si.node_id.replace(/^.+-/,'');

        el.find('.player-button-prev').find('.player-link').attr('href','/play_nodes/' + nid + '/prev');
        el.find('.player-button-next').find('.player-link').attr('href','/play_nodes/' + nid + '/next');
    }
    return si;
};
SoundInfo.null_sound_info = function() {
    var obj = {};
    
    obj.url = '';
    obj.title = '--------';
    obj.sound_id = null;
    obj.node_id = null;
    obj.duration = 0;
    obj.position = 0;
    obj.artist = '';
    obj.album = '';
    obj.song = '';
    
    return obj;
};
SoundInfo.store = function(si) {
    $.cookie('selected_sound_info',JSON.stringify(si));
};
SoundInfo.read = function() {
    var si = $.cookie('selected_sound_info');
    return si ? JSON.parse(si) : null;
};


function strip(str) {
    return str.replace(/^\s+/,'').replace(/\s+$/,'');
}
