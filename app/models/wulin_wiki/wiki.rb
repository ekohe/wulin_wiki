module WulinWiki
  class Wiki < ActiveRecord::Base
    # attr_accessible :content, :grid_name, :user_email, :screen_name

    validates_uniqueness_of :grid_name, allow_blank: true, allow_nil: true
    validates_uniqueness_of :screen_name, allow_blank: true, allow_nil: true

    before_save :set_user_email

    def set_user_email
      email = defined?(User) && User.respond_to?(:current_user) && User.current_user.try(:email)
      self.user_email = email if self.user_email.blank?
    end
  end
end
