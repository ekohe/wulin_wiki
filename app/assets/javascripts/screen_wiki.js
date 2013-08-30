// Screen Wiki action
WulinMaster.actions.ScreenWiki = $.extend({}, WulinMaster.actions.BaseAction, {
  name: 'screen_wiki',

  handler: function() {
    // Remove all existing dialogs
    $("#screen_wiki_dialog").remove();

    var $dialog, $wiki_container, screenName, screenTitle;

    screenName = this.screen_name;
    screenTitle = this.screen_title;

    $wiki_container = $('<div/>').attr({'class': 'screen_wiki'});

    $dialog = $('<div/>')
      .attr({'id': 'screen_wiki_dialog', 'title': 'Wiki for ' + screenTitle + ' screen'})
      .css({display: 'none', 'overflow-y': 'auto'})
      .append($wiki_container)
      .appendTo('body');

    $dialog.dialog({
        autoOpen: true,
        width: 800,
        height: 600,
        create: function(event, ui) {
          $.get('/wulin_wiki/show', { screen_name: screenName }, function(data) {
            $wiki_container.html(data);
          });
        }
      });
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.ScreenWiki);