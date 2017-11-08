class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_user_present
    puts session[:currrent_user]
    if session[:currrent_user].present?
      true
    else
      redirect_to sessions_new_path
    end
  end
end
