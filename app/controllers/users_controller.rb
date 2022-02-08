class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new(params[:name])
  end

  def create
    @user = User.save
  end
end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(username: "...", email: "...", password: "...")

#     if @user.save
#       redirect_to /posts/index
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   private
#   def user_params
#     params.require(:user).permit(:username, :email, :full_name, :password)
#   end
# end

