(function($){
    
    $.widget("playz.playlist", {
	options: {
        },
        
	_create: function(){
            var $pl = this;
            console.log("playlist:_create");
	    // by default, not playing.
            this._bind_events();
            this._load(function() {
                console.log("");
                $pl._init_contents();
                $pl.element.find('.listnode-header.depth0').next().show();
            });
	},
	_init: function(){
            var $pl = this;
            console.log("playlist:_init");
            $pl._init_contents();
	},
        _init_contents: function() {
            console.log("_init_contents");
            this._init_head_sortable();
            this._init_album_sortable();
            this._bind_header_click();
            this._bind_remove_click();
            this._bind_flatten_click();
            this._mark_playing();
            this._bind_dblclick();
        },
        _onload: function() {
            
        },
        _load: function(onloadfunc) {
            var $pl = this;
            this.element.load('/list_nodes',function() {
                onloadfunc();
            });
        },
        _mark_playing: function() {
            var playdata = $.cookie('playing');
            if(playdata) {
                var curalb = this.element.find('.playing').closest('.Album.listnode-content');
                this.element.find('.playing').removeClass('playing');
                var parts = playdata.split('--');
                var lnpart = parts[0];
                if(lnpart) {
                    var sel = '[id$="' + lnpart  + '"]';
                    this.element.find(sel).addClass('playing');
                }
                var albpart = parts[2];
                if(albpart) {
                    var sel = '[data-elem_id="' + albpart  + '"]';
                    this.element.find(sel).addClass('playing');
                }
                console.log('_mark_playing: playdata=' + playdata + " lnpart=" + lnpart + " albpart=" + albpart);
                var newalb = this.element.find('.playing').closest('.Album.listnode-content');
                if( curalb != newalb ) {
                    curalb.hide();
                    newalb.show();
                }
            }
        },
        _update_cb: function(event,ui) {
            console.log('.listnode-content sortable update');
            console.log('  item is: ' + ui.item.attr('id') + ' parent is: ' + ui.item.parent().closest('.listnode-elem').attr('id') + " index=" + ui.item.index());
            var data = {
                item: ui.item.attr('id'),
                list: ui.item.parent().closest('.listnode-elem').attr('id'),
                index: ui.item.index()
            };
            $.getJSON("/list_nodes/move_to",data);
            $.event.trigger('playlistchanged');
        },
        _bind_header_click: function() {
            this.element.find('.listnode-header.ListHead,.listnode-header.Album')
                .not('.listnode-clickable')
                .addClass('listnode-clickable')
                .click(function() {
	            $(this).next().toggle();
	            return false;
                }).next().hide();
        },
        _bind_dblclick: function() {
            var $pl = this;
            this.element.find('.listnode-elem.AudioFile')
                .off('dblclick.playlist')
                .on('dblclick.playlist', function() {
                    console.log("listnode-elem.AudioFile DBLCLICK");
	            var playdata = $(this).attr('data-playdata');
                    $.cookie('playing', playdata, { expires: 7, path: '/' });
                    $.event.trigger('trackcontrol',{ playdata: playdata });
                    $pl._mark_playing();
	            return false;
                });
        },
        _bind_remove_click: function() {
            var $pl = this;
            this.element.find('.remove-node')
                .off('click.playlistremove')
                .on('click.playlistremove',function(event) {
                    $(this).closest('.listnode-elem').remove();
                    $.ajax({
                        url: $(this).attr('href'),
                        type: 'DELETE',
                    }).done(function() {
                        console.log("remove complete: triggering playlistchanged");
                        $.event.trigger('playlistchanged.playlist');
                        $pl._mark_playing();
                    });
                    return false;
                });
        },
        _bind_flatten_click: function() {
            this.element.find('.flatten-node')
                .off('click.playlistflatten')
                .on('click.playlistflatten',function(event) {
                    var parent_el = $(this).closest('.listnode-elem');
		    parent_el.find('.listnode-elem').insertBefore(parent_el);
		    parent_el.remove();
                    // href will handle server side flatten
                });
        },
        _init_head_sortable: function() {
            var $pl = this;
            var els = this.element.find('.ListHead.listnode-content');
            console.log("_init_head_sortable: els.length=" + els.length);
            els.sortable({
                create: function(event, ui) {
                    console.log('.ListHead.listnode-content sortable created');
                },
                update: function(event,ui) {
                    $pl._update_cb(event,ui);
                },
                items: '> .listnode-elem',
                axis: 'y',
                //containment: 'parent',
                forcePlaceholderSize: true,
                placeholder: 'listnode-sortable-placeholder',
                delay: 500
            }).disableSelection();
        },
        _init_album_sortable: function() {
            var $pl = this;
            this.element.find('.Album.listnode-content').sortable({
                create: function(event, ui) {
                    console.log('.Album.listnode-content sortable created');
                },
                update: function(event,ui) {
                    $pl._update_cb(event,ui);
                },
                items: '> .listnode-elem',
                axis: 'y',
                //containment: 'parent',
                forcePlaceholderSize: true,
                placeholder: 'listnode-sortable-placeholder',
                connectWith: '.ListHead.listnode-content',
                delay: 500
                
            }).disableSelection();
        },

        _bind_events: function() {
            console.log("playlist: bind_events");
            var $pl = this;
            this.element.on('playlistchanged',function(event) {
                console.log("playlist: caught playlistchanged");
            });
            this.element.on('trackplayer', function(event,ui) {
                var si = ui.sound_info;
                if(si) {
                    node_id = si.node_id;
                    console.log("got trackplayer node_id = " + node_id);
                    // $('.AudioFile.playing').removeClass('playing');
                    // $('#' + node_id).addClass('playing');
                    $pl._mark_playing();
                }
            });
        },
        
	destroy: function(){
            console.log("playlist:destroy");
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
    
    $.extend($.ui.playlist, {
	instances: []
    });
    
})(jQuery);
