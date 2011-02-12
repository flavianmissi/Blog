require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
  end

  test "if route /posts/x/tags have been set right" do
    assert_generates "/tags", :controller => "tags", :action => "index"
  end

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

  test "should create a new tag" do
    assert_difference("Tag.count") do
      post :create, :tag => @tag.attributes
    end

    assert_redirected_to tags_path()
  end

  test "should get edit action" do
    get :edit, :id => @tag.to_param 
    assert_response :success
    assert_not_nil :tag
  end

  test "should update an existing tag" do
    put :update, :id => @tag.to_param, :tag => @tag.attributes
    assert_redirected_to tags_path
  end

end
