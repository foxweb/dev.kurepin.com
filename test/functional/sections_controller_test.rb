require 'test_helper'

class SectionsControllerTest < ActionController::TestCase

  setup do
    @section = sections(:one)
  end

  test "should show section" do
    get :show, id: @section.to_param
    assert_response :success
  end

end
