class PostsController < ApplicationController

  autocomplete :post, :title

  def index
    @sections = Section.all :order => 'num, id'
  end

  def show
    @post = Post.find(params[:id])
  end
end
