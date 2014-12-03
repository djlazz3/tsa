require 'test_helper'

class DangersControllerTest < ActionController::TestCase
  test "should get idex" do
    get :idex
    assert_response :success
  end

end
