require 'test_helper'

class SourcesControllerTest < ActionController::TestCase

  setup do
    @source = sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sources)
  end

  test "should show source" do
    get :show, id: @source
    assert_response :success
  end

end
