class ResultsController < ApplicationController

  def new
    @result = Result.new
    @subjects = Subject.all
    @users = User.where(:role => 0)
  end
  
  def create
    @result = Result.new(subject_params)
    if @result.save
      redirect_to results_path
    else
      render 'new'
    end
  end
  
  def index
    @result = Result.all
  end

  
private
  def subject_params
    params.require(:result).permit(:sid, :subject, :marks)
  end

end
