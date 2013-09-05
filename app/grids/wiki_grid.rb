if defined? WulinMaster
  class WikiGrid < WulinMaster::Grid
    title 'Wiki List'

    model WulinWiki::Wiki

    cell_editable false

    path '/wulin_wiki/wikis'

    multi_select false

    column :user_email, label: 'Last updated by', formable: false
    column :grid_name
    column :screen_name
    column :created_at, formable: false
    column :updated_at, formable: false

    action :add
    action :wiki_editor, title: 'Edit', icon: :edit
    action :delete
    action :filter
    action :excel
  end
end