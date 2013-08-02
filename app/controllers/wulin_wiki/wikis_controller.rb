module WulinWiki
  class WikisController < ApplicationController
    layout false
    before_filter :get_wiki, only: :show

    def save
      redirect_to(root_path) if respond_to?(:current_user) && current_user.admin?
      @wiki = Wiki.where(grid_name: params[:wiki][:grid_name]).first_or_initialize
      @wiki.assign_attributes(params[:wiki])
      @wiki.save
    end

    def show
    end

    private
      def get_wiki
        @grid_name = params[:grid_name]
        @wiki = Wiki.where(grid_name: params[:grid_name]).first
      end
  end
end