class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    p "email = #{params[:email]}"

    if !!@user && @user.authenticate(params[:password])
      p 'authenticated'
      flash.now[:success] = "Welcome back, #{@user.username}!!"
      session[:user_id] = @user.id
      session[:username] = @user.username
      p "user id is #{@user.id}"
      p "session id is #{session[:user_id]}"
      redirect_to posts_path
    else
      flash.now[:alert] = "Something went wrong! Please check your password and email are correct"
      redirect_to login_path
    end
  end

  def destroy
    redirect_to root_url, notice: "Bye, #{session[:username]}!!"
    session[:user_id] = nil
  end
end
