require 'test_helper'

class MyapplicationControllerTest < ActionController::TestCase
  test "should get myapplication" do
    get :myapplication
    assert_response :success
  end

end
