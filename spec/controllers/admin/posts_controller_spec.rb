require "spec_helper"

describe PostsController do
  fixtures :posts

  before :each do
    @first_post = posts :first_post
    @second_post = posts :second_post
    @all_posts = [@first_post, @second_post]
  end

  it "should see a list of posts in frontend index" do
    get :index
    response.should be_success
    assigns(:posts).should == @all_posts
  end

  it "should call edit action"do
    get :edit, {:id => 1}
    response.should be_success
    assigns(:post).should == @first_post
  end

  it "should update a post" do
    @first_post.title = "New Title For Post 1"
    put :update, :id => @first_post.id.to_param, :post => @first_post.to_param
    response.should redirect_to posts_path
  end

  it "should delete a post" do
    delete :destroy, :id => @first_post.id.to_param
    response.should redirect_to posts_path
  end
end
