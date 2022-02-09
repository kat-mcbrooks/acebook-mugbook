class SignInController < ApplicationController
  def index
    @user = 'blank user class'
  end

  def welcome
    @user = (params[:username])
  end

  
end
