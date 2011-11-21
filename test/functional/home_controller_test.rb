require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get package" do
    get :package
    assert_response :success
  end

  test "should get flights" do
    get :flights
    assert_response :success
  end

end
