require 'test_helper'

class HomecontrollerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get see" do
    get :see
    assert_response :success
  end

end
