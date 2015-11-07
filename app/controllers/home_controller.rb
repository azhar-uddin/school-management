class HomeController < ApplicationController
  def index
  end
  
  def marks
    @result = Result.where(:sid => params[:id])
  end
  
end
