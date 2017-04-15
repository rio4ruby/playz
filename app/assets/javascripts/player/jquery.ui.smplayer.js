function log(str) {
    console.log(str);
    $('#log').append("<div>" + str + "</div>");
}
(function($){
    function dig2(num) {
	return (num <= 9 ? "0" + num.toString() : num.toString());
    }
    function logmsg(message) {
	var now = new Date();
	var nowFormatted = now.getYear() + 1900 + "/" + now.getMonth() + "/" + now.getDate() + " "
	    + now.getHours() + ":" + dig2(now.getMinutes()) + ":" + dig2(now.getSeconds());
	return nowFormatted + " => " + message;
    }
    function log(msg) {
	console.log(logmsg(msg));
    }
    
    $.widget("ui.smplayer", {
	options: {
	    name: "smplayer",
		
	    sm2loaded: function(event,ui) {
		log("smplayersm2loaded");
	    }
	},
	_create: function(){
	    log("smplayer _create: " + this.options.name);
	    this._init_sm2();
	    
	    // remember this instance
	    $.ui.smplayer.instances.push(this.element);
	},
	_init_sm2: function() {
	    var $smplayer = this;

            soundManager.url = '/soundmanager2/swf/';
	    soundManager.useFlashBlock = false; // optionally, enable when you're ready to dive in
	    soundManager.allowPolling = true;
            soundManager.debugMode = true;
            soundManager.flashVersion = 9;
	    soundManager.onready(function() {
		log("smplayer soundManager.onload");
		$smplayer._sm2_ready();
	    });

	},
	_sm2_ready: function() {
            console.log("smplayer: sm2ready");
            this._trigger('sm2ready');
	},
	_init: function(){
	    log("smplayer _init: " + this.options.name);
	    //var $smplayer = this;
	    
	},
	_ms2str: function(ms) {
	    var secs = ms/1000;
	    var ss = Math.round(secs % 60);
	    var mm = Math.floor(secs / 60);
	    var sstr = (ss < 10 ? "0" : "") + ss.toString();
	    var mstr = mm.toString();
	    return mstr + ":" + sstr;
	},
        _str2ms: function(dur) {
            var ary = dur.split(':');
            if( ary.length != 2 ) return 0;
            return (parseInt(ary[1]) * 1000) + (parseInt(ary[0]) * 60000);
        },

	destroy: function(){
	    // remove this instance from $.ui.smplayer.instances
	    var element = this.element,
	    position = $.inArray(element, $.ui.smplayer.instances);

	    // if this instance was found, splice it off
	    if(position > -1){
		$.ui.smplayer.instances.splice(position, 1);
	    }

	    // call the original destroy method since we overwrote it
	    $.Widget.prototype.destroy.call( this );
	},
	_enable: function() {
	    if( this.options.disabled ) {
		this._reset_timeout();
	    }
	},
	enable: function(){
	    log("smplayer _enable: " + this.options.name);
	    this._enable();
	    $.Widget.prototype.enable.call( this );
	},
	_disable: function() {
	    if( ! this.options.disabled ) {
		this.element.unbind(this._event);
	    }
	},
	disable: function(){
	    log("smplayer _disable: " + this.options.name);
	    this._disable();
	    $.Widget.prototype.disable.call( this );
	},
	_getOtherInstances: function(){
	    var element = this.element;

	    return $.grep($.ui.smplayer.instances, function(el){
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

    $.extend($.ui.smplayer, {
	instances: []
    });

})(jQuery);
