require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  test "should get teacher" do
    get :teacher
    assert_response :success
  end

end
