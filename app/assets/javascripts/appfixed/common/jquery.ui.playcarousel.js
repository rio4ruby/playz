(function($){
    
    $.widget("ui.playcarousel", {
	options: {
            init: function(event,ui) {
                console.log("event=" + event + " ui=" + ui + " id=" + ui.element.attr('id'));
                $(ui.element).find('i').removeClass('icon-pause').addClass('icon-play');
            },
            playing: function(event,ui) {
                $(ui.element).find('i').removeClass('icon-play').addClass('icon-pause');
            },
            paused: function(event,ui) {
                $(ui.element).find('i').removeClass('icon-pause').addClass('icon-play');
            }
        },
        
	_create: function(){
            console.log("playcarousel:_create");
	    // by default, not playing.
            $(this.element).carousel({
                interval: false
            });
            this._bind_events();
	},
        _next: function() {
            var el = this._next_el();
            var playdata = el.find('.playdata').attr('data-playdata');
            console.log("carousel _next playing=" + playdata);
            $.cookie('playing', playdata, { expires: 7, path: '/' });
            var si = SoundInfo.sound_info_from_element(el);
            $.event.trigger('trackcontrol',{ sound_info: si });
        },
        _prev: function() {
            var el = this._prev_el();
            var playdata = el.find('.playdata').attr('data-playdata');
            console.log("carousel _prev playing=" + playdata);
            $.cookie('playing', playdata, { expires: 7, path: '/' });
            var si = SoundInfo.sound_info_from_element(el);
            $.event.trigger('trackcontrol',{ sound_info: si });
        },
        _select: function(si) {
            var node_id = si.node_id.replace(/^[^-]+-/,'item-');
            var el = $('#' + node_id);
            console.log("carousel _select node_id=" + node_id + " el.length=" + el.length);
            var idx = el.index('.playlist-items .item');
            console.log("carousel _select idx=" + idx);
            $(this.element).carousel(idx);
        },
        
        _bind_events: function() {
            console.log("playcarousel: bind_events");
            var $pc = this;
            this.element.on('playlistchanged',function(event) {
                console.log("playcarousel: caught playlistchanged");
                $pc._playlistchanged();
            });
            this.element.on('trackplayer',function(event,ui) {
                console.log("carousel caught trackplayer sound_info=" + ui.sound_info);
                $pc._select(ui.sound_info);
            });
            this.element.on('nextplayer',function() {
                console.log("carousel caught nextplayer");
                $pc._next();
                $(this).carousel('next');
            });
            this.element.on('nextcontrol',function() {
                console.log("carousel caught nextcontrol");
                $pc._next();
                $(this).carousel('next');
            });
            this.element.on('prevcontrol',function() {
                console.log("carousel caught prevcontrol");
                $pc._prev();
                $(this).carousel('prev');
            });
            this.element.on('slid',function() {
                var playdata = $(this).find('.active').find('.playdata').attr('data-playdata');
                //console.log("carousel SLID playing=" + playdata);
                $.cookie('playing', playdata, { expires: 7, path: '/' });
            });
            this.element.on('slide',function() {
                //console.log("carousel SLIDE");
            });
            this.element.find('a.carousel-control.left').click(function() {
                console.log("CAUGHT left");
                $pc._prev();
            });
            this.element.find('a.carousel-control.right').click(function() {
                console.log("CAUGHT right");
                $pc._next();
            });
                                                             
            
        },
	_init: function(){
            console.log("playcarousel:_init");
            
	},
        _next_el: function() {
            return $(this.element).find('.playlist-items').find('.item.active').next() ||
                $(this.element).find('.playlist-items').find('.item').first()
        },
        _prev_el: function() {
            return $(this.element).find('.playlist-items').find('.item.active').prev() ||
                $(this.element).find('.playlist-items').find('.item').last()
        },
        _playlistchanged: function() {
            console.log("PLAYLIST changed here");
            var active_id = $(this.element).find('.playlist-items').find('.item.active').attr('id');
            console.log("PLAYLIST CHANGED: active_id=" + active_id);
            var url = '/list_nodes/playlist_playable_items';
            var data = { active_id: active_id};
            this.element.find('.playlist-items').load(url,data,function() {
                var items = $(this).find('.item');
                $('#status').html("playlistchange: playlist now has " + items.length + " items.");
            });
        },
        
	destroy: function(){
            console.log("playcarousel:destroy");
	    // call the original destroy method since we overwrote it
	    $.Widget.prototype.destroy.call( this );
	},
        
        
	_setOption: function(key, value){
	    this.options[key] = value;
            
	    switch(key){
	    case "something":
		// perform some additional logic if just setting the new
		// value in this.options is not enough. 
		break;
	    }
	}
    });
    
    $.extend($.ui.playcarousel, {
	instances: []
    });
    
})(jQuery);
