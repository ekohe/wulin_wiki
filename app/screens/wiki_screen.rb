if defined? WulinMaster
  class WikiScreen < WulinMaster::Screen
    title 'Wiki List'

    path '/wulin_wiki/wikis'

    grid WikiGrid

  end
end