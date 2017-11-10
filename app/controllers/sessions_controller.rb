class SessionsController < ApplicationController
  def new
   
  end

  def create
    @user = Login.find_by(email: params[:login][:email])
    puts params[:login][:password]
    puts @user.try(:password)
    if @user.try(:password) == params[:login][:password]
      session[:currrent_user] = @user.email
      redirect_to accounts_path
    else
      session[:currrent_user] = nil
      redirect_to sessions_new_path
    end
  end

  def log_out
    puts "log_out"
   session[:currrent_user] = nil
    redirect_to sessions_new_path
  end
end

