// Grid wiki action
WulinMaster.actions.GridWiki = $.extend({}, WulinMaster.actions.BaseAction, {
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

    var $wikiModal = $('<div/>')
      .addClass('modal modal-fixed-footer')
      .css({overflow: 'hidden'})
      .appendTo($('body'));
    var $modalHeader = $('<div/>')
      .addClass('modal-header')
      .append($('<span/>').text('Wiki for ' + wikiName))
      .append($('<i/>').text('close').addClass('modal-close material-icons right'))
      .appendTo($wikiModal);
    var $modalContent = $('<div/>')
      .addClass('modal-content')
      .appendTo($wikiModal);

    $wikiModal.modal({
      ready: function(modal, trigger) {
        $.get('/wulin_wiki/show', params, function(data) {
          $modalContent.html(data);
        });
      },
      complete: function() {
        $wikiModal.remove();
      }
    });

    $wikiModal.modal('open');
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.GridWiki);
