require 'test_helper'

class BabblersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
