class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
   
  def new
    #byebug
    @post = Post.new
  end
   
  def create
    @post = Post.new(post_params)
    #byebug
    if @post.save
      redirect_to '/posts'
    else
      render 'new'
    end
  end
  
  private
    def post_params
      params[:post][:user_id] = 1   #put code to get_current_logged_in_user_id here (hardcode for now)        
      params.require(:post).permit(:title, :link, :imagelink, :user_id)
    end
end
