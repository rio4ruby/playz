function queryobject(url) {
    var i,
        p,
        obj = {};
    var qs = url.split('?');
    if (qs === "") { return {}; }
    var a = qs[1].split('&');
    if (a === "") { return {}; }
    for (i = 0; i < a.length; i += 1) {
        p = a[i].split('=');
        if (p.length === 2) {
            obj[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
        }
    }
    return obj;
 }


(function ($) {
    $.querystring = (function (a) {
        var i,
            p,
            obj = {};
        if (a === "") { return {}; }
        for (i = 0; i < a.length; i += 1) {
            p = a[i].split('=');
            if (p.length === 2) {
                obj[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
            }
        }
        return obj;
    }(window.location.search.substr(1).split('&')));
}(jQuery));
