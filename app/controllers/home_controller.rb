class HomeController < ApplicationController
  def index
    if params[:search]
      @search = Track.tagged_with(params[:search].split(' '))

      respond_to do |format|
        format.html
        format.js 
      end
    else
    end
  end
end
