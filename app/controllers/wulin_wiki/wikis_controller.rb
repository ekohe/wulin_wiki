module WulinWiki
  class WikisController < WulinMaster::ScreenController
    controller_for_screen WikiScreen
    layout false, only: :show
    before_action :get_wiki, only: :show
    skip_before_action :create_permissions, only: :show

    def save
      redirect_to(root_path) if respond_to?(:current_user) && current_user.admin?
      params[:wiki].delete_if{|k,v| v.blank? }
      if params[:wiki][:grid_name]
        @wiki = Wiki.where(grid_name: params[:wiki][:grid_name]).first_or_initialize
      else
        @wiki = Wiki.where(screen_name: params[:wiki][:screen_name]).first_or_initialize
      end
      @wiki.assign_attributes(wiki_params)
      @wiki.save
    end

    private
      def wiki_params
        params.require(:wiki).permit(:content, :screen_name, :grid_name, :user_email)
      end

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
