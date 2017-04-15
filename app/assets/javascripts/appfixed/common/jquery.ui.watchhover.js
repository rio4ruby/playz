function log(str) {
    $('#log').append("<div>" + str + "</div>");
}
(function($){
    function log(msg) {
	console.log(msg);
    }
    
    $.widget("ui.watchhover", {
	options: {
	    name: "watchhover",
	    delay: 1000,
            hoverSelector: '[id|="sr"] .detail-button',
            action: function(event,ui) {
                console.log("watchhover ACTION: " + ui.el.attr('id'));
            },
            hover: function(event,ui) {
                //console.log("watchhover hover:" + ui.el.attr('id'));
            },
            unhover: function(event,ui) {
                //console.log("watchhover UNhover:" + ui.el.attr('id'));
            }
        },
	_hover_els: [],
        _hover_el: function() {
            return this._hover_els.length > 0 ? this._hover_els[this._hover_els.length-1] : null;
        },
	_create: function(){
	    console.log("watchhover _create: " + this.options.name);
            var $w = this;
            this._init_top_hover();
	},
	_init: function(){
	    console.log("watchhover _init: " + this.options.name);
            this._bind_hover_events();
	},
        _init_top_hover: function() {
            var $w = this;
            this.element.hover(function() {
                //console.log("entering watchhover");
                var els = $(this).find('.watchhover');
                if( els.length == 0 ) {
                    $w._bind_hover_events();
                }
	        $w._reset_timeout();
            },function() {
                //console.log("leaving watchhover");
                $w._clear_timeout();
                $(this).find('.hovering').removeClass('hovering');
                $w._hover_els.splice(0,$w._hover_els.length);
            });
        },
        _bind_hover_events: function() {
            var $w = this;
            var els = this.element.find(this.options.hoverSelector);
            //console.log("_bind_hover_events binding: " + els.length);
            this.element.find(this.options.hoverSelector).addClass('watchhover').hover(function(event) {
                $w._reset_timeout();
                $(this).addClass('hovering');
                $w._hover_els.push($(this));
                $w._trigger('hover',event,{el: $(this)});
            },function(event) {
                $w._reset_timeout();
                $(this).removeClass('hovering');
                $w._hover_els.pop();
                $w._trigger('unhover',event,{el: $(this)});
            });
        },
	_timeout_handler: function() {
	    var $w = this;
	    var timeoutHandler = function(event) {
                if( $w._hover_el() && $w._hover_el().hasClass('hovering') ) {
                    $w._trigger('action',event,{el: $w._hover_el()});
                }
	    };
	    return timeoutHandler;
	},
        _clear_timeout: function() {
	    if( this._timeoutId ) {
		clearTimeout(this._timeoutId);
		this._timeoutId = null;
	    }
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
	    this._clear_timeout();
	    var timeoutHandler = this._timeout_handler();
	    var delay_ms = this.options.delay;
	    this._timeoutId = setTimeout(timeoutHandler,delay_ms);
	},

	destroy: function(){
	    // call the original destroy method since we overwrote it
            this._disable();
            this.element.find('.watchhover').removeClass('watchhover hovering');
	    $.Widget.prototype.destroy.call( this );
	},
	_enable: function() {
            this._init_top_hover();
	},
	enable: function(){
	    this._enable();
	    $.Widget.prototype.enable.call( this );
	},
	_disable: function() {
	    this.element.unbind('mouseenter mouseleave');
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

    $.extend($.ui.watchhover, {
	instances: []
    });

})(jQuery);
