require 'test_helper'

class LinksControllerTest < ActionController::TestCase

  setup do
    @link = links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:links)
  end

  test "should show link" do
    get :show, id: @link
    assert_response :success
  end

end
