require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  test "should get index and assign :tags" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:tag)
  end

  test "if route /posts/x/tags have been set right" do
    assert_generates "/tags", :controller => "tags", :action => "index"
  end
end
