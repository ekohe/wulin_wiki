module WulinWiki
  class WikisController < WulinMaster::ScreenController
    controller_for_screen WikiScreen
    layout false, only: :show
    before_filter :get_wiki, only: :show
    skip_before_filter :create_permissions, only: :show

    def save
      redirect_to(root_path) if respond_to?(:current_user) && current_user.admin?
      @wiki = Wiki.where(grid_name: params[:wiki][:grid_name].presence, screen_name: params[:wiki][:screen_name].presence).first_or_initialize
      @wiki.assign_attributes(params[:wiki])
      @wiki.save
    end

    private
      def get_wiki
        if params[:grid_name]
          @grid_name = params[:grid_name]
          @wiki = Wiki.where(grid_name: @grid_name).first
        else
          @screen_name = params[:screen_name]
          @wiki = Wiki.where(screen_name: @screen_name).first
        end
      end
  end
end