(function($){
    
    $.widget("ui.playbutton", {
	options: {
            init: function(event,ui) {
                //console.log("event=" + event + " ui=" + ui + " id=" + ui.element.attr('id'));
                $(ui.element).find('i').removeClass('icon-pause').addClass('icon-play');
            },
            playing: function(event,ui) {
                console.log('options.playing')
                $(ui.element).find('i').removeClass('icon-play').addClass('icon-pause');
            },
            paused: function(event,ui) {
                console.log('options.paused')
                $(ui.element).find('i').removeClass('icon-pause').addClass('icon-play');
            }
        },
        
	_create: function(){
            console.log("playbutton:_create");
	    // by default, not playing.
            $(this).html('<i class="icon-play"></i>');
	    this._setState('paused')
            this._initDisplay();
            this._bind_events();
	},

        _bind_events: function() {
            console.log("playbutton: bind_events");
            var $pb = this;
            this.element.bind('click.playbutton',function(event) {
                //$.event.trigger($pb.isPlaying() ? "pause" : "play");
                var el = $(this).html();
                console.log("CLICK here isPlaying=" + $pb.isPlaying() + " el=" + el);
                if( $pb.isPlaying() ) {
                    console.log("triggering pausecontrol.playbutton");
                    $.event.trigger("pausecontrol.playbutton");
                }
                else {
                    console.log("triggering playcontrol.playbutton");
                    $.event.trigger("playcontrol.playbutton");
                }
            });
            this.element.bind('playplayer',function(event) {
                console.log("playbutton: caught playplayer");
                $pb.play();
            });
            this.element.bind('pauseplayer',function(event) {
                console.log("playbutton: caught pauseplayer");
                $pb.pause();
            });
            this.element.bind('stopplayer',function(event) {
                $pb.pause();
            });


        },
	_init: function(){
            console.log("playbutton:_init");
            
	},
        _initDisplay: function() {
            this._trigger('init',null,{element: this.element});
        },
        _showPlaying: function() {
            this._trigger('playing',null,{element: this.element});
        },
        _showPaused: function() {
            this._trigger('paused',null,{element: this.element});
        },
        
	play: function(){
            console.log("PLAY: " + this.isPlaying());
            if( this.isPlaying() ) {
                return;
            }

            this._setState('playing')
            this._showPlaying();
            
	    return this;
	},
        
	pause: function(){
            console.log("PAUSE: " + this.isPlaying());
            if( !this.isPlaying() ) {
                return;
            }

            this._setState('paused');
            this._showPaused();
            
	    // trigger pause event
            
	    return this;
	},
        _setState: function(state) {
            //this.element.data('state',state);
            this._state = state;
            return state;
        },
        _getState: function() {
            //return this.element.data('state');
            return this._state;
        },
	isPlaying: function(){
            // console.log('isPlaying:_getState=' + this._getState()); 
	    return this._getState() === 'playing';
	},
        
	destroy: function(){
            console.log("playbutton:destroy");
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
    
    $.extend($.ui.playbutton, {
	instances: []
    });
    
})(jQuery);
