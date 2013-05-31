class PostsController < ApplicationController

  def index
    @sections = Section.order(:num, :id).includes(:posts).all
  end

  def show
    @post = Post.includes(:section).find params[:id]
  end
end
