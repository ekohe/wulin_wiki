module WulinWiki
  class Wiki < ActiveRecord::Base
    attr_accessible :content, :grid_name, :user_email, :screen_name

    validates :content, :user_email, presence: true
    validates :grid_name, :screen_name, uniqueness: true, allow_blank: true
  end
end
