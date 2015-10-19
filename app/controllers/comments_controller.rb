class CommentsController < ApplicationController
  def index    
    @comments = Comment.where(post_id: params["post_id"])
    @comment = Comment.new # keep form from exploding
    @post = Post.where(id: params["post_id"]).first # needed this so that I could get the proper route in the form partial    
  end
  
  def create    
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_comments_path
    end
  end 
  
  private
    def comment_params      
      @post = Post.where(id: params["post_id"]).first
      # this doesn't seem right but was the only way I could think of to get the post id in there
      params[:comment][:post_id] = @post.id
      params[:comment][:user_id]  = 1   #put code to get_current_logged_in_user_id here (hardcode for now)       
      params.require(:comment).permit(:body, :post_id, :user_id)
    end
  
end
