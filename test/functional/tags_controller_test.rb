require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  test "should get index and assign :tags" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "Should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:tag)
  end
end
