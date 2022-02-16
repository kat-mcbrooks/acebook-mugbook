class LikesController < ApplicationController
  before_action :find_post
  before_action :find_like, only: [:destroy]

  def create
    if @post.liked?(current_user.id)
      flash[:notice] = "You can't mug this more than once, sorry!!"
    else
      @post.likes.create(user_id: current_user.id)
    end
    redirect_to posts_path(@post)
  end

  def destroy
    if !(@post.liked?(current_user.id))
      flash[:notice] = "You can't unmug something you haven't yet mugged"
    else
      @like.destroy
    end
    redirect_to posts_path
  end
  
  private
  
  def find_post
    @post = Post.find(params[:post_id])
  end

  def find_like
    @like = @post.likes.find(params[:id])
  end
end
