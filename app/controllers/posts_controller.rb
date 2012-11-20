class PostsController < ApplicationController

  autocomplete :post, :title

  def index
    @sections = Section.order(:num, :id).includes(:posts).all
  end

  def show
    @post = Post.includes(:section).find params[:id]
  end
end
