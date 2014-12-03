require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get idex" do
    get :idex
    assert_response :success
  end

end
