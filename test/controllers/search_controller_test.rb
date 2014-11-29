require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get cairn" do
    get :cairn
    assert_response :success
  end

  test "should get text" do
    get :text
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
