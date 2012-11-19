class NewsController < ApplicationController

  def index
    @news = News.order('created_at DESC').all
  end

  def show
    @news = News.by_date(params[:year], params[:month], params[:day]).last
  end
end
