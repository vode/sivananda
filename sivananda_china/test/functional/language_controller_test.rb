require 'test_helper'

class LanguageControllerTest < ActionController::TestCase
  test "should get navi" do
    get :navi
    assert_response :success
  end

end
