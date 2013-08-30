// Grid wiki action
WulinMaster.actions.Wiki = $.extend({}, WulinMaster.actions.BaseAction, {
  name: 'wiki',

  handler: function() {
    gridName = this.getGrid().name;
    this.openWikiDialog(gridName);
  },

  openWikiDialog: function(gridName, screenName) {
    // Remove all existing dialogs
    $("#wiki_dialog").remove();

    var $dialog, $wiki_container, wikiName = '', params = {};

    if (gridName) {
      wikiName = gridName + ' grid';
      params['grid_name'] = gridName;
    } else if (screenName) {
      wikiName = screenName + ' screen';
      params['screen_name'] = screenName;
    }

    $wiki_container = $('<div/>').attr({'class': 'grid_wiki'});

    $dialog = $('<div/>')
      .attr({'id': 'wiki_dialog', 'title': 'Wiki for ' + wikiName})
      .css({display: 'none', 'overflow-y': 'auto'})
      .append($wiki_container)
      .appendTo('body');

    $dialog.dialog({
        autoOpen: true,
        width: 900,
        height: 700,
        create: function(event, ui) {
          $.get('/wulin_wiki/show', params, function(data) {
            $wiki_container.html(data);
          });
        }
      });
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.Wiki);