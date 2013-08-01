module WulinWiki
  class WikisController < ApplicationController
    layout false
    before_filter :get_wiki, only: [:edit, :show]

    def save
      @wiki = Wiki.where(grid_name: params[:wiki][:grid_name]).first_or_initialize
      @wiki.assign_attributes(params[:wiki])
      @wiki.save!
    end

    def edit
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