function o2s(o) {
    return $('<div>').append($(o).clone().empty()).remove().html()
}
function ot2s(o) {
    return $('<div>').append($(o).clone()).remove().html()
}
function o2id(o) {
    if( o ) {
	return $(o).attr('id');
    }
    return 0;
}
function li_index(li) {
    return $(li).prevAll().size();
}
function ms2str(ms) {
    var secs = ms/1000;
    var ss = Math.round(secs % 60);
    var mm = Math.floor(secs / 60);
    var sstr = (ss < 10 ? "0" : "") + ss.toString();
    var mstr = mm.toString();
    return mstr + ":" + sstr;
}
function str2ms(dur) {
    var ary = dur.split(':');
    if( ary.length != 2 ) return 0;
    return (parseInt(ary[1]) * 1000) + (parseInt(ary[0]) * 60000);
}

