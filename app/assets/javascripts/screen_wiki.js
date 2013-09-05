// Screen Wiki action
WulinMaster.actions.ScreenWiki = $.extend({}, WulinMaster.actions.GridWiki, {
  name: 'screen_wiki',

  handler: function() {
    screenName = this.screen_name;
    this.openWikiDialog(null, screenName);
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.ScreenWiki);