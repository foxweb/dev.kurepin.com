class NewsController < ApplicationController

  def index
    @news = News.all :order => 'created_at DESC'
  end

  def show
    @news = News.by_date(params[:year], params[:month], params[:day]).last
  end
end
