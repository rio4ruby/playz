
    function update_cb(event,ui) {
        console.log('.listnode-content sortable update');
        console.log('  item is: ' + ui.item.attr('id') + ' parent is: ' + ui.item.parent().closest('.listnode-elem').attr('id') + " index=" + ui.item.index());
        var data = {
            item: ui.item.attr('id'),
            list: ui.item.parent().closest('.listnode-elem').attr('id'),
            index: ui.item.index()
        };
        $.getJSON("/list_nodes/move_to",data);
        
    }
    function init_sortables() {
        $('.ListHead.listnode-content').sortable({
            create: function(event, ui) {
                console.log('.ListHead.listnode-content sortable created');
            },
            update: update_cb,
            items: '> .listnode-elem',
            axis: 'y',
            //containment: 'parent',
            forcePlaceholderSize: true,
            placeholder: 'listnode-sortable-placeholder',
            delay: 500
            
            
        }).disableSelection();
        $('.Album.listnode-content').sortable({
            create: function(event, ui) {
                console.log('.Album.listnode-content sortable created');
            },
            update: update_cb,
            items: '> .listnode-elem',
            axis: 'y',
            //containment: 'parent',
            forcePlaceholderSize: true,
            placeholder: 'listnode-sortable-placeholder',
            connectWith: '.ListHead.listnode-content',
            delay: 500
            
        }).disableSelection();
    }
