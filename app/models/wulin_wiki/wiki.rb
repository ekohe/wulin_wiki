module WulinWiki
  class Wiki < ActiveRecord::Base
    attr_accessible :content, :grid_name, :user_email

    validates :content, :grid_name, :user_email, presence: true
    validates :grid_name, uniqueness: false
  end
end
