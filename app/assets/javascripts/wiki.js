// Audit action
WulinMaster.actions.Wiki = $.extend({}, WulinMaster.actions.BaseAction, {
  name: 'wiki',

  handler: function() {
    // Remove all existing dialogs
    $("#wiki_dialog").remove();

    var $dialog, $wiki_container, gridName;

    gridName = this.getGrid().name;
    $wiki_container = $('<div/>').attr({'class': 'grid_wiki'});

    $dialog = $('<div/>')
      .attr({'id': 'wiki_dialog', 'title': 'Wiki for ' + gridName + ' grid'})
      .css({display: 'none', 'overflow-y': 'auto'})
      .append($wiki_container)
      .appendTo('body');

    $dialog.dialog({
        autoOpen: true,
        width: 800,
        height: 600,
        // buttons: {
        //   "Ok": function() {
        //     $(this).dialog("destroy");
        //   }
        // },
        create: function(event, ui) {
          $.get('/wulin_wiki/show', { grid_name: gridName }, function(data) {
            $wiki_container.html(data);
          });
        }
      });
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.Wiki);