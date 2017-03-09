(function($){
            
    $.widget("ui.announcer", {
        options: {
        },
        
	_create: function(){
            console.log("announcer: _create");
            this._register_client();
        },
	_init: function(){
            console.log("announcer: _init");
        },
        _register_client: function() {
            var clients = this._read_clients();
            var myname = this._find_unused_name(clients);
            clients[myname] = 'ok';
            this._write_clients(clients);
            window.name = myname;
            $(window).unload(function() {
                console.log("WINDOW CLOSE: " + window.name);
                $.cookie('playit-control', null, { expires: 7, path: '/' });
            });
        },
        _unregister_client: function() {
            var clients = this._read_clients();
            delete clients[window.name];
            this._write_clients();
        },
        _read_clients: function() {
            var clients = $.cookie("playit-control");
            return clients ? JSON.parse(clients) : {};
        },
        _find_unused_name: function(clients) {
            var i;
            var name = null;
            for(i=1; i<10; ++i) {
                var nm = 'playit-' + i.toString();
                console.log("checking name: " + nm);
                if( !(nm in clients) ) {
                    name = nm;
                    break;
                }
            }
            return name;
        },
        _write_clients: function(clients) {
            $.cookie('playit-control', JSON.stringify(clients), { expires: 7, path: '/' });
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
    
    
})(jQuery);
