(function($){
            
    $.widget("ui.nodeplayer", {
        options: {
        },
        
	_create: function(){
            console.log("nodeplayer: _create");
            this._volume = $.cookie('player_volume') || 60;
            this._mute = false;
            this._sounds = {};
            this._infos = {};
            this._bind_events();

            $('.volumechanged').trigger('volumechanged',{ value: this._volume });
            this._init_playing_el();
            
            this.element.addClass('playcontrol pausecontrol positioncontrol mutecontrol unmutecontrol stopcontrol trackcontrol volumecontrol');
	    // remember this instance
	    $.ui.nodeplayer.instances.push(this.element);
        },
        _bind_events: function() {
            console.log('nodeplayer: _bind_events');
            var $pl = this;
            this.element.on('mutecontrol',function(event) {
                $pl._mute = true;
                $pl.mute();
            });
            this.element.on('unmutecontrol',function(event) {
                console.log('UNMUTECONTROL');
                $pl._mute = false;
                $pl.mute();
            });
            this.element.on('playcontrol',function(event) {
                console.log('PLAYCONTROL');
                $pl.play();
            });
            this.element.on('pausecontrol',function(event) {
                console.log('PAUSECONTROL');
                $pl.play();
            });
            this.element.on('stopcontrol',function(event) {
                $pl.stop();
            });
            this.element.on('trackcontrol',function(event,ui) {
                console.log("nodeplayer: caught trackcontrol");
                $pl.track(ui);
            });
            this.element.on('positioncontrol',function(event,ui) {
                console.log('nodeplayer: positionchanged value=' + ui.value + " sound_id=" + $pl._sound_id)
                var smsound = $pl._smsound();
                smsound.setPosition(ui.value);
            });
            this.element.on('volumecontrol',function(event,ui) {
                var smsound = $pl._smsound();
                $pl._volume = ui.value;
                if( smsound  ) {
                    smsound.setVolume($pl._volume);
                }
            });

        },
        _playing_el: function() {
            var playing_el = $(this.element).find('.active').first();
            return playing_el;
        },
        _init_playing_el: function() {
            this._set_playing(this._playing_el());
        },
        _playlist_sel: function() {
            var args = Array.prototype.slice.call(arguments);
            return '#' + this.element.attr('id') + ' ' + args.join(' ');
        },
        isPlaying: function() {
            var playing = false;
            if(this._sound_id) {
                var smsound = this._smsound();
                if(smsound) {
                    if( smsound.playState == 1 && !smsound.paused ) {
                        playing = true;
                    }
                }
            }
            return playing;
        },
        reread: function(doplay) {
            this._set_playing(this._playing_el(),doplay);
        },
        track: function(ui) {
            var current_si = this._infos[this._sound_id];
            if( ui.sound_info ) {
                console.log("    ui.sound_info.sound_id=" + ui.sound_info.sound_id);
                if(current_si.node_id != ui.sound_info.node_id) {
                    console.log("TRACK: _set_playing_si(", ui.sound_info, ',', ui.doplay, ")");
                    this._set_playing_si(ui.sound_info,ui.doplay);
                }
            }
            else if( ui.playdata ) {
                console.log("    ui.playdata=" + ui.playdata);
                var parts = ui.playdata.split('--');
                var lnpart = parts[0];
                if(lnpart) {
                    var sel = '[id$="' + lnpart  + '"]';
                    var el = this.element.find(sel).first();
                    if( el && el.length ) {
                        var si = this._sound_info_from_element(el);
                        this._set_playing_si(si);
                    }
                    var idx = this.element.find(sel).index();
                }
                
            }
            else {
                this.reread(ui.doplay);
            }
        },
        _set_playing: function(el,doplay) {
            var si = this._sound_info_from_element(el);
            this._set_playing_si(si,doplay);
        },
        _set_playing_si: function(si,doplay) {
            var $np = this;

            this._next_sound_id = null;
            var was_playing = this.isPlaying();
            this.stop();
            this._sound_id = this._create_sound_from_si(si);

            if( was_playing || doplay) {
                this.element.one('playplayer',function() {
                    $np._trigger_selected();
                });
                this.play();
            }
            else {
                this._trigger_selected();
            }
        },
        _keep_playing: false,
        _finish: function() {
            var $np = this;
            this._keep_playing = true;
            if( this._next_sound_id ) {
                this._sound_id = this._next_sound_id;
                this._next_sound_id = null;
                this.element.one('playplayer',function() {
                    console.log('NODEPLAYER: _finish ON playplayer');
                    $('.nextplayer').trigger('nextplayer');
                    $np._trigger_selected();
                });
                this.play();
            }
        },
        _trigger_selected: function() {
            var si = this._infos[this._sound_id];
            if( si.sound_id ) {
                $('.trackplayer').trigger('trackplayer',{ sound_info: si })
            }
        },
        _create_sound_from_si: function(si) {
            var $pl = this;
            this._infos[si.sound_id] = si;
            if( si.sound_id ) {
                if( ! this._sounds[si.sound_id] ) {
                    this._sounds[si.sound_id] = soundManager.createSound({
		        id: si.sound_id,
		        url: si.url,
                        volume: this._volume
	            });
                }
            }
            return si.sound_id;
        },
        _load_next: function() {
            var nextel = this._playing_el().next();
            if( nextel && nextel.length > 0 ) {
                var si = this._sound_info_from_element(nextel);
                this._next_sound_id = this._create_sound_from_si(si);
            }
        },
        _sound_info_from_element: function(el) {
            var sound_id = el.find('.sound_id-AudioFile').attr('data-sound_id');
            if( ! this._infos[sound_id] ) {
                this._infos[sound_id] = SoundInfo.sound_info_from_element(el);
            }
            return this._infos[sound_id];
        },
        track_select: function(ui) {
        },
        sendpos: function(pos) {
            $('.positionplayer').trigger('positionplayer',{ value: pos });
        },
        stop: function() {
            if(this._sound_id) {
                var smsound = this._smsound();
                if(smsound) {
                    smsound.stop();
                    this.sendpos(0);
                }
            }
            $('.stopplayer').trigger('stopplayer');
        },
        play: function() {
            var $pl = this;
            var smsound = this._smsound();

            if( smsound.readyState !== 2 ) {
                if( smsound.playState !== 1 ) {
                    smsound.play({
                        position: 0,
		        onerror: function() {
                            console.log('+++++++ onerror: ' + smsound.sID);
		        },
		        onplay: function() {
                            console.log('NODEPLAYER: smsound.onplay');
                            this.setVolume($pl._volume);
                            $('.playplayer').trigger( 'playplayer' );
                            $pl.sendpos(smsound.position);
		        },
		        onfinish: function() {
                            console.log('NODEPLAYER: smsound.onfinish');
                            this.setVolume($pl._volume);
                            $pl._finish();
		        },
		        onload: function(success) {
                            console.log('NODEPLAYER: smsound.onload');
                            $('.durationplayer').trigger('durationplayer',{ max: smsound.duration });
                            this.onPosition(smsound.duration - 10000, function() {
                                $pl._load_next();
                            });
		        },
		        whileloading: function() {
                            $('.durationplayer').trigger('durationplayer',{ max: smsound.durationEstimate });
		        },
		        whileplaying: function() {
                            $pl._secs = Math.floor(smsound.position/10000);
                            if( $pl._secs != $pl._priorsecs ) {
                                $pl._priorsecs = $pl._secs;
                                $pl.sendpos(smsound.position);
                            }
		        }
                    });
                    if( smsound.paused ) {
                        $('.pauseplayer').trigger('pauseplayer');
                    }
                }
                else {
                    smsound.togglePause();
                    if( smsound.paused ) {
                        $('.pauseplayer').trigger('pauseplayer');
                    }
                    else {
                        $('.playplayer').trigger('playplayer');
                    }
                }
            }
            else {
                console.log('Warning: sound failed to load (security restrictions, 404 or bad format)');
            }
        },
        mute: function() {
            var smsound = this._smsound();
            if( smsound ) {
                if( this._mute && !smsound.muted ) {
                    soundManager.mute();
                }
                else if ( !this._mute && smsound.muted) {
                    soundManager.unmute();
                }
                if( smsound.muted ) {
                    $('.muteplayer').trigger('muteplayer');
                }
                else {
                    $('.unmuteplayer').trigger('unmuteplayer');
                }
            }
        },
        _smsound: function() {
            return this._sounds[this._sound_id];
        },
        _str2ms: function(dur) {
            var ary = dur.split(':');
            if( ary.length != 2 ) return 0;
            return (parseInt(ary[1]) * 1000) + (parseInt(ary[0]) * 60000);
        },

	_init: function(){
            console.log("nodeplayer: _init");
            
	},
	destroy: function(){
	    // remove this instance from $.ui.nodeplayer.instances
	    var element = this.element,
	    position = $.inArray(element, $.ui.nodeplayer.instances);
            
	    // if this instance was found, splice it off
	    if(position > -1){
		$.ui.nodeplayer.instances.splice(position, 1);
	    }
            
	    // call the original destroy method since we overwrote it
	    $.Widget.prototype.destroy.call( this );
	},
        
	_getOtherInstances: function(){
	    var element = this.element;
            
	    return $.grep($.ui.nodeplayer.instances, function(el){
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
    
    $.extend($.ui.nodeplayer, {
	instances: []
    });
    
})(jQuery);
