class CommentsController < ApplicationController

  http_basic_authenticate_with :name => "admin", :password => "password", :only => :destroy

  def index
    @comments = Comment.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path @post, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end
end
