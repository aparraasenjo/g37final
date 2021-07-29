class HomeController < ApplicationController
  def index
    if params[:search] && (designer_signed_in? || producer_signed_in?)
      @class_name = designer_signed_in? ? 'Track' : 'Work'
      @search = @class_name.constantize.tagged_with(params[:search].split(' '))
      @opt = "#{@class_name.downcase}_name"
    end

    respond_to do |format|
      format.html
      format.js 
    end
  end
end
