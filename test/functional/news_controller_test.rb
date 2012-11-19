require 'test_helper'

class NewsControllerTest < ActionController::TestCase

  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should show news" do
    get :show, year: @news.created_at.year, month: @news.created_at.month, day: @news.created_at.day
    assert_response :success
  end

end
