class PostsController < ApplicationController
  before_filter :find_post, :only => [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path
    else
      redirect_to new_post_path
      flash[:notice] = "Your post could not be saved."
    end
  end

  def update
    @post.update_attributes(params[:post])
    redirect_to posts_path
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    end
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
