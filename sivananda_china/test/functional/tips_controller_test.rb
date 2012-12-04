require 'test_helper'

class TipsControllerTest < ActionController::TestCase
  test "should get tips" do
    get :tips
    assert_response :success
  end

end
