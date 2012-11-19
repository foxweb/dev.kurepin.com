require 'test_helper'

class TypesControllerTest < ActionController::TestCase

  setup do
    @type = types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:types)
  end

  test "should show type" do
    get :show, id: @type.to_param
    assert_response :success
  end

end
