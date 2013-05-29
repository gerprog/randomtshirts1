class CommentsController < ApplicationController
  # below from rails guides but shouldn't be necess
  # http_basic_authenticate_with :name => "sly1", :password => "sly1", :only => :destroy

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

end
