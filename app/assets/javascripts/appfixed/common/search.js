
function init_wf() {
    console.log("calling watchfield");
    $("#q").watchfield({
	name : "wf1",
	delay : 400,
	changed : function(event,ui) {
            var url = $(this).closest('form').attr('action');
            var params = {q: $(this).val()};
            console.log(params)
            $.get(url,params,function(data,textStatus) {
                console.log("wf changed status=" + textStatus + " url=" + url);
                $('#tab-search').html(data);
                bind_content_click();
                init_sr_hover();
                init_sr_links();
                wf_history(params);
            });
            //$('#q').closest('form').submit();
	}
    });
}
function init_wf_history() {
    var History = window.History; // Note: We are using a capital H instead of a lower h
    if ( !History.enabled ) {
         // History.js is disabled for this browser.
         // This is because we can optionally choose to support HTML4 browsers or not.
        return false;
    }

    // Bind to StateChange Event
    History.Adapter.bind(window,'statechange',function(){ // Note: We are using statechange instead of popstate
        var State = History.getState(); // Note: We are using History.getState() instead of event.state
        console.log("bind statechange");
        History.log(State.data, State.title, State.url);
    });
}


function wf_history(params) {
    
    var History = window.History; // Note: We are using a capital H instead of a lower h
    if ( !History.enabled ) {
         // History.js is disabled for this browser.
         // This is because we can optionally choose to support HTML4 browsers or not.
        return false;
    }

    // Change our States
    var url = '/?';
    
    if( params.q ) {
        params.q = params.q.replace(/\s/g,'+');
    }
    if( !params.page ) {
        params.page = 1;
    }
    url += 'q=' + params.q + '&' + 'page=' + params.page
    console.log("wf_history url=" + url);
    History.replaceState(params, "Player", url); // 
}

function wf_history0() {
    
    var History = window.History; // Note: We are using a capital H instead of a lower h
    if ( !History.enabled ) {
         // History.js is disabled for this browser.
         // This is because we can optionally choose to support HTML4 browsers or not.
        return false;
    }

    // Bind to StateChange Event
    History.Adapter.bind(window,'statechange',function(){ // Note: We are using statechange instead of popstate
        var State = History.getState(); // Note: We are using History.getState() instead of event.state
        History.log(State.data, State.title, State.url);
    });

    // Change our States
    History.pushState({state:1}, "State 1", "?state=1"); // logs {state:1}, "State 1", "?state=1"
    History.pushState({state:2}, "State 2", "?state=2"); // logs {state:2}, "State 2", "?state=2"
    History.replaceState({state:3}, "State 3", "?state=3"); // logs {state:3}, "State 3", "?state=3"
    History.pushState(null, null, "?state=4"); // logs {}, '', "?state=4"
    History.back(); // logs {state:3}, "State 3", "?state=3"
    History.back(); // logs {state:1}, "State 1", "?state=1"
    History.back(); // logs {}, "Home Page", "?"
    History.go(2); // logs {state:3}, "State 3", "?state=3"
}

function init_sr_hover() {
    $('#main').watchhover({
        delay: 500,
        action: function(event,ui) {
            var data = {
                q: $('#q').val(),
                el_id: ui.el.closest('[id|="sr"]').attr('id')
            };

            var url = '/home/aside';
            var fudge = 8;
            $('.hit-aside').load(url,data,function() {
                init_aside_links();
                bind_content_click();
                // var offset = $('#sidebar').offset();
                // var margLeft = $('#sidebar').css('margin-left') || "0";
                // var mleft = parseInt(margLeft);
                // var offleft = offset.left - mleft - fudge;
                
                // var fxtop = $('body > .navbar-fixed-top').height();
                // var scrollTop = $(window).scrollTop(); // check the visible top of the browser  
                // var winh = $(window).height();
                // var sidh = $('#sidebar').outerHeight(true);
                // console.log("sidh=" + sidh + " winh=" + winh + " fxtop=" + fxtop);
                // if( sidh > (winh - fxtop) ) {
                //     $('#sidebar').removeAttr("style");
                // }
                // else if  ((offset.top)<(scrollTop+fxtop)) {
                //     $('#sidebar').attr("style","position:fixed;top:" + fxtop + "px;left:" + offleft + "px;");
                // }
                
                // if ((offset.top)<(scrollTop+fxtop)) {
                //     $('#sidebar').attr("style","position:fixed;top:" + fxtop + "px;left:" + offleft + "px;");
                // }
                // else {
                //     $('#sidebar').removeAttr("style");
                // }
                
            });
        }
    });
}
function bind_content_click() {
    $('.link-name').off('click.content').on('click.content', function() {
        console.log("link-name: " + $(this).text() + " q:" + $('#q').val() );
        $('#q').val($(this).text()).closest('form').submit();
        return false;
    });
}
function bind_clear_form_click() {
    $('.search-form-wrapper i').on('click', function() {
        console.log("search-form i: " + $(this).text() + " q:" + $('#q').val() );
        $('#q').val("").focus();
        return false;
    });
}

function bind_scroll_aside(fudge) {
    var offset = $('#sidebar').offset();
    console.log(offset);

    if( offset ) {
        $(window).on('scroll.aside',function () {  
            var offset = $('#sidebar').offset();
            console.log(offset);
            var margLeft = $('#sidebar').css('margin-left') || "0";
            var mleft = parseInt(margLeft);
            var offleft = offset.left - mleft - fudge;
            var fxtop = $('body > .navbar-fixed-top').height();
            var scrollTop = $(window).scrollTop(); // check the visible top of the browser  
            var winh = $(window).height();
            var sidh = $('#sidebar').outerHeight(true);
            
            console.log("sidh=" + sidh + " winh=" + winh + " fxtop=" + fxtop);
            if( sidh > (winh - fxtop) ) {
                return;
            }
            console.log("margLeft=" + margLeft + " mleft=" + mleft + " offleft=" + offleft);
            console.log(offset);
            if ((offset.top)<(scrollTop+fxtop)) {
                $('#sidebar').attr("style","position:fixed;top:" + fxtop + "px;left:" + offleft + "px;");
            }
            else {
                $('#sidebar').removeAttr("style");
            }
        });
    }
}

function init_sr_scroll() {

    $(window).resize(function() {
        $(window).off('scroll.aside');
        
        //bind_scroll_aside(0);
    });
    
    //bind_scroll_aside(0);
 
}
function init_aside_links() {
    //console.log("INIT_ASIDE_LINKS");
    $('#main').find('.hit-aside')
        .find('.elem')
        .find('.elem-image,.image')
        .find('img')
        .click(function() {
            console.log("aside-link CLICK");
            var elem = $(this).closest(".elem");
            var plid = elem.closest('.playable').attr('id');
            var tempid = plid.replace(/^sr-/,'pl-');
            var dest_list = $('#playing-playlist').find('.listnode-content').first();
            var wc = elem.closest('.playable').attr('class');
            console.log("clicked sr link id=" + elem.attr('id') + " wc=" + wc);
            var wrapper = $('<div></div>').addClass('listnode-elem listnode-temp depth1')
                .addClass(wc).removeClass('hit-row')
                .attr('id',tempid)
                .html('<div class="listnode-header"></div>');
            var temp_elem = elem.clone().wrapAll(wrapper).parent().parent();
            dest_list.append(temp_elem);
        });
}
function init_page_links() {
    console.log('init_page_links...');
    $('#search-results .pagination ul li a').on('click', function(e) {
        e.preventDefault();
        var para = this['href'].match(/\?(.+)$/)[1].split('&').map(function(x) {
            return x.split('=');
        });
        var params = {};
        $.map( para, function(val) {
            params[val[0]] = val[1];
        });
        console.log(params);
        $.get('/',params,function(data,textStatus) {
            console.log("search results changed page status=" + textStatus);
            $('#search-results').html(data);
            // bind_content_click();
            //init_sr_hover();
            //init_sr_links();
            init_page_links();
            //wf_history(params);
        });
    });
}
function init_sr_links() {
    console.log("INIT_SR_LINKS");
    $('#main').find('.hits')
        .find('.playable')
        .find('.elem-image,.image')
        .find('img')
        .click(function() {
            var elem = $(this).closest(".elem");
            var plid = elem.closest('.playable').attr('id');
            var tempid = plid.replace(/^sr-/,'pl-');
            var dest_list = $('#playing-playlist').find('.listnode-content').first();
            var wc = elem.closest('.playable').attr('class');
            console.log("clicked sr link id=" + elem.attr('id') + " wc='" + wc + "' dest_list=" + dest_list);
            var wrapper = $('<div></div>').addClass('listnode-elem listnode-temp depth1')
                .addClass(wc).removeClass('hit-row')
                .attr('id',tempid)
                .html('<div class="listnode-header"></div>');
            var temp_elem = elem.clone().wrapAll(wrapper).parent().parent();
            dest_list.append(temp_elem);
        });
}
function init_history() {

}
function init_page_links() {
    console.log('init_page_links...');
    $('#search-results .pagination ul li a').on('click', function(e) {
        e.preventDefault();
        var para = this['href'].match(/\?(.+)$/)[1].split('&').map(function(x) {
            return x.split('=');
        });
        var params = {};
        $.map( para, function(val) {
            params[val[0]] = val[1];
        });
        console.log(params);
        $.get('/',params,function(data,textStatus) {
            console.log("search results changed page status=" + textStatus);
            $('#search-results').html(data);
            // bind_content_click();
            init_sr_hover();
            init_sr_links();
            init_page_links();
            wf_history(params);
        });
    });
}

$(document).ready(function() {
    // init_wf();
    // $('#search-options1 .btn').button();
    // $('#search-options2 .btn').button();
    // init_sr_hover();
    // init_sr_links();
    // init_sr_scroll();
    // bind_content_click();
    // bind_clear_form_click();
    // console.log("READY 8");
    // init_page_links();
    // init_wf_history();
    // //init_dragdrop_links();
});



