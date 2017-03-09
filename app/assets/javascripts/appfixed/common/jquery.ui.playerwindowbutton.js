(function($){
    
    $.widget("ui.playerwindowbutton", {
	options: {
        },
        
	_create: function(){
            console.log("playerwindowbutton _create");
            this._init_button();
            this._bind_events();
            this._init_control();
	    // remember this instance
	    $.ui.playerwindowbutton.instances.push(this.element);
	},
        _playerwin: null,
        _init_button: function() {
            this.element.button()
                .attr('data-loading-text',"Opening player ...")
                .attr('data-playeropened-text','<i class="icon-remove"></i>')
                .attr('autocomplete', 'off')
                .wrap('<div class="btn-group playerwindowbutton-wrapper"></div>');
            
        },
        _add_player_control: function() {
            console.log("_add_player_control");
            $('<button class="btn pwb-button playbutton"><i class="icon-play"></i></button>')
                .insertBefore(this.element)
                .playbutton();
            $('<button class="btn pwb-button prevbutton"><i class="icon-backward"></i></button>')
                .insertBefore(this.element)
                .click(function() {
                    $.event.trigger('prevcontrol');
                });
            $('<button class="btn pwb-button nextbutton"><i class="icon-forward"></i></button>')
                .insertBefore(this.element)
                .click(function() {
                    $.event.trigger('nextcontrol');
                });

        },
        _remove_player_control: function() {
            console.log("_remove_player_control");
            this.element.siblings(".pwb-button").remove();
        },
        _bind_events: function() {
            var $pwb = this;
            this.element.on('playeropened',function () {
                console.log('EVENT playeropened');
                $(this).button('playeropened');
                $pwb._add_player_control();
                $(this).removeClass('btn-primary');
                $('#playing-playlist').addClass('player-win-opened');
            });
            this.element.on('closingplayer',function () {
                console.log("EVENT closingplayer");
                $pwb._remove_player_control();
                $(this).button('reset');
                $(this).addClass('btn-primary');
                $pwb._playerwin = null;
                $('#playing-playlist').removeClass('player-win-opened');
                //$pwb._bind_events();
            });
            this.element.on('click',function () {
                console.log("CLICK #open-window-button");
                if( $pwb._playerwin ) {
                    $pwb._playerwin.close();
                    
                }
                else {
                    console.log("LOADING #open-window-button");
                    $(this).button('loading');
                    $(this).one('sm2ready',function () {
                        console.log("#open-window-button sm2ready");
                        $(this).trigger('playeropened');
                    });
                    $pwb._open_window();
                }
            });
        },
        _open_window: function() {
            var $pwb = this;
            console.log('_open_window');
            var miniwin = window.open ("/players/simple","mini","location=no,resizable=1,width=450,height=170");
            $(miniwin.document).ready(function() {
                console.log(miniwin);
                console.log(miniwin.location);
                window.register_win(miniwin);
                $pwb._playerwin = miniwin;
            });
            return miniwin;
        },
        
	_init: function(){
            console.log("playerwindowbutton _init");
	},
        _init_control: function() {
            var $pwb = this;
            $('body').announcer();
            this._init_poster();
            var player_win = this._get_player_win();
            if( player_win ) {
                window.cross_register(player_win);
                this.element.trigger('playeropened');
            }
        },
        _get_player_win: function() {
            var player_name = $.cookie('playit-player');
            console.log('PLAYIT-PLAYER IS ' + player_name);
            if( player_name ) {
                return window.open ("",player_name);
            }
            return null;
        },

        _init_poster: function() {
            $("body").eventposter({
                local_type: "controlmessage",
                remote_type: "playermessage",
                local_events: ['playcontrol', 'pausecontrol','trackcontrol','playlistchanged', 'nextcontrol', 'prevcontrol', 'nextplayer']
            });
        },

	destroy: function(){
	    // remove this instance from $.ui.playerwindowbutton.instances
	    var element = this.element,
	    position = $.inArray(element, $.ui.playerwindowbutton.instances);
            
	    // if this instance was found, splice it off
	    if(position > -1){
		$.ui.playerwindowbutton.instances.splice(position, 1);
	    }
            
	    // call the original destroy method since we overwrote it
	    $.Widget.prototype.destroy.call( this );
	},
        
	_getOtherInstances: function(){
	    var element = this.element;
            
	    return $.grep($.ui.playerwindowbutton.instances, function(el){
		return el !== element;
	    });
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
    
    $.extend($.ui.playerwindowbutton, {
	instances: []
    });
    
})(jQuery);
