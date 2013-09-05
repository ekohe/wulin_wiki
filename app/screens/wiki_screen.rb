if defined? WulinMaster
  class WikiScreen < WulinMaster::Screen
    title 'Wiki List'

    path '/wulin_wiki/wikis'

    grid WikiGrid

    def authorized?(user)
      user.admin?
    end
  end
end