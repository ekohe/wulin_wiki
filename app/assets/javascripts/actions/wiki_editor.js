// Grid wiki action
WulinMaster.actions.WikiEditor = $.extend({}, WulinMaster.actions.BaseAction, {
  name: 'wiki_editor',

  handler: function() {
    var data, actionDelegator;
    var grid = this.getGrid();
    var selectedIndexs = grid.getSelectedRows();
    if (selectedIndexs.length > 0) {
      data = grid.getDataItem(selectedIndexs[0]);
      actionDelegator = $.extend({}, WulinMaster.actions.GridWiki);
      actionDelegator.openWikiDialog(data.grid_name, data.screen_name);
    } else {
      displayErrorMessage('Select one wiki first!');
    }
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.WikiEditor);