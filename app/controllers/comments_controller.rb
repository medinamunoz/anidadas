class CommentsController < ApplicationController
  def index
  	@post = Post.find(params[:post_id])
  		@comments = @post.comments
  end

  def create
  	@post = Post.find(params[:post_id])
  	@post.comments.build(comment_params)
  	@post.save
  	redirect_to post_comments_path(@post)
  	
  end

  def edit
  	@post = Post.find(params[:post_id])
  	@comment = Comment.find(params[:id])
  	
  end

  def update
  	@post = Post.find(params[:post_id])
  	@comment = Comment.find(params[:id])
  	@comment.update(comment_params)
  	redirect_to post_comments_path(@post)

  	
  end

  private
  def comment_params
  	params.require(:comment).permit(:content)
  end


end
