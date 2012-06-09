class HomeController < ApplicationController

  def index
    @news = News.all :limit => 3, :order => 'created_at DESC'
    @posts = Post.all :limit => 10, :order => 'created_at DESC'
    render :puffer_page => '/'
  end

end
