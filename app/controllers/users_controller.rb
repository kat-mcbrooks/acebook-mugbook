class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    
    if @user.save
      p 'success!'
      redirect_to user_url(@user)
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @user = User.find(params[:id])
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :name, :password)
  end
end
