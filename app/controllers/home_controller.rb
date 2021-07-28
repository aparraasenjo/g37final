class HomeController < ApplicationController
  def index
    if params[:search] && designer_signed_in? 
      @search = Track.tagged_with(params[:search].split(' '))

      respond_to do |format|
        format.html
        format.js 
      end
    elsif params[:search] && producer_signed_in? 
        @search = Work.tagged_with(params[:search].split(' '))
  
        respond_to do |format|
          format.html
          format.js 
        end
    else
    end
  end
end
