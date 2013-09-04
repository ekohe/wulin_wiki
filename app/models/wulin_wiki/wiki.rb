module WulinWiki
  class Wiki < ActiveRecord::Base
    attr_accessible :content, :grid_name, :user_email, :screen_name

    validates :content, :user_email, presence: true
    validates_uniqueness_of :grid_name, allow_blank: true, allow_nil: true
    validates_uniqueness_of :screen_name, allow_blank: true, allow_nil: true
  end
end
