require 'test_helper'

class CourseintroControllerTest < ActionController::TestCase
  test "should get 200hour" do
    get :200hour
    assert_response :success
  end

  test "should get 500hour" do
    get :500hour
    assert_response :success
  end

  test "should get breathcourse" do
    get :breathcourse
    assert_response :success
  end

  test "should get holidaycourse" do
    get :holidaycourse
    assert_response :success
  end

end
