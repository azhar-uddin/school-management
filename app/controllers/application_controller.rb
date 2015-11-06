class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    if current_user.role == 'student'
      admin_root_path
    elsif current_user.role == 'teacher'
      user_root_path
    else
      subjects_path
    end
  end
  
end
