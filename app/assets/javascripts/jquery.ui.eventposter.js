(function($){
            
    $.widget("ui.eventposter", {
        options: {
            local_type: "playermessage",
            remote_type: "controlmessage",
            local_events: ['playplayer', 'pauseplayer']
        },
        
	_create: function(){
            console.log("eventposter: _create");
            this._bind_remote_listener();
            this._bind_local_events();
            //this._bind_client_event();
            //this._register_client();
	    // remember this instance
	    $.ui.eventposter.instances.push(this.element);
        },
	_init: function(){
            console.log("eventposter: _init");
        },
        _targets: {},
        add_target: function(w) {
            console.log(window.name + " add_target: " + w.name);
            this._targets[w.name] = w;
        },
        rem_target: function(w) {
            console.log(window.name + " rem_target: " + w.name);
            delete this._targets[w.name];
        },
        _target_windows: function() {
            var targs = []
            for( name in this._targets ) {
                targs.push(this._targets[name]);
            }
            return targs;
        },
        _bind_local_events: function() {
            var events = this.options.local_events;
            var i;
            for(i=0; i < events.length; ++i) {
                this._bind_local_event(events[i]);
            }
        },
        _bind_close_events: function() {
            var $ep = this;
            $(window).unload(function() {
                $ep._target_windows().each(function(win) {
                    win.eventposter('rem_target',window);
                });
            });
        },
        _bind_local_event: function(ev) {
            var $w = this;
            $('body').on(ev,function(event,ui) {
                console.log("messenger: forwarding " + ev);
                $w._post_event(ev,ui);
            });
        },
        _post_event: function (ev,args) {
            var dat = {
                event: ev,
                args: args
            };
            var i;
            var wins = this._target_windows();
            for( i=0; i < wins.length; ++i ) {
                $("#messages").append("posting to: " + wins[i].name + "<br/>");
                console.log("posting to " + wins[i].name);
                console.log(dat);
                if( wins[i] ) {
                    pm({
                        target: wins[i],
                        type: this.options.local_type, 
                        data: dat, 
                        success: function(data) {
                            $("#messages").append("success: " + JSON.stringify(data) + "<br/>");
                        },
                        error: function(data) {
                            $("#messages").append("error: " + JSON.stringify(data) + "<br/>");
                        }
                    });
                }
            }
        },
        _bind_remote_listener: function() {
            pm.bind(this.options.remote_type, function(data) {
                console.log("received: " + JSON.stringify(data));
                $('#messages').append("received: " + JSON.stringify(data) + "<br/>");
                if( data.event ) {
                    $.event.trigger(data.event,[data.args]);
                }
                //return ({status: 'ok' });
            });

        },
        destroy: function(){
	    // remove this instance from $.ui.eventposter.instances
	    var element = this.element,
	    position = $.inArray(element, $.ui.eventposter.instances);
            
	    // if this instance was found, splice it off
	    if(position > -1){
		$.ui.eventposter.instances.splice(position, 1);
	    }
            
	    // call the original destroy method since we overwrote it
	    $.Widget.prototype.destroy.call( this );
	},
        
	_getOtherInstances: function(){
	    var element = this.element;
            
	    return $.grep($.ui.eventposter.instances, function(el){
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
    
    $.extend($.ui.eventposter, {
	instances: []
    });
    
})(jQuery);
