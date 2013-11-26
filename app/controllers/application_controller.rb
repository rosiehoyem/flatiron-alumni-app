class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end
  helper_method :forem_user

  def after_sign_in_path_for(resource)
    if session[:new_emp] == true
      session[:new_emp] = nil 
      edit_employer_profile_path(current_user)
    elsif current_user.employer == true
      employer_path
    else  
      user_path(current_user)
    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

	def authorize
	  redirect_to login_url, alert: "Not authorized" if current_user.nil?
	end
end