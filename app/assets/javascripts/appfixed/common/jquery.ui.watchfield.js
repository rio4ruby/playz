function log(str) {
    $('#log').append("<div>" + str + "</div>");
}
(function($){
    function log(msg) {
	console.log(msg);
    }
    
    $.widget("ui.watchfield", {
	options: {
	    name: "wf",
	    autoOpen: true,
	    delay: 1000,
            minLength: 3

	},
	_event: "keyup.watchfield change.watchfield paste.watchfield",
	_prevalue: null,
	_create: function(){

	    _prevalue = this.element.val();
	    this._reset_timeout();
	},
	_init: function(){
	    //log("watchfield _init: " + this.options.name);

	},
	_timeout_handler: function() {
	    var wf = this;
	    var timeoutHandler = function(event) {
		var val = wf.element.val();
		if( val != wf._prevalue ) {
                    if( val.length >= wf.options.minLength ) {
		        wf._trigger("changed", event, { value: val } );
                    }
		    wf._prevalue = val;
		}
	    };
	    return timeoutHandler;
	},
	_event_handler: function() {
	    var timeoutHandler = this._timeout_handler();
	    var delay_ms = this.options.delay;
	    return function(event) {
		if( this._timeoutId ) {
		    clearTimeout(this._timeoutId);
		    this._timeoutId = null;
		}
		this._timeoutId = setTimeout(timeoutHandler,delay_ms);
	    };
	},
	_reset_timeout: function() {
	    this._timeoutId = null;
	    var eventHandler = this._event_handler();
	    this.element.bind(this._event,eventHandler);
	},

	destroy: function(){
	    // call the original destroy method since we overwrote it
	    $.Widget.prototype.destroy.call( this );
	},
	_enable: function() {
	    if( this.options.disabled ) {
		this._reset_timeout();
	    }
	},
	enable: function(){
	    this._enable();
	    $.Widget.prototype.enable.call( this );
	},
	_disable: function() {
	    if( ! this.options.disabled ) {
		this.element.unbind(this._event);
	    }
	},
	disable: function(){
	    this._disable();
	    $.Widget.prototype.disable.call( this );
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

    $.extend($.ui.watchfield, {
	instances: []
    });

})(jQuery);
