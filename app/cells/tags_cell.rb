class TagsController < ApplicationController
  before_filter :find_tag, :only => [:show, :edit, :update]

  def display
    render
  end

  def index
    @tags = Tag.all
    render
  end

  def new
    @tag = Tag.new
    render
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "Tag saved."
      redirect_to tags_path
    else
      flash[:notice] = "Tag not saved. Try again later."
      redirect_to tags_path
    end
  end

  def update
    @tag.update_attributes(params[:tag])
    flash[:notice] = "Tag updated"
    redirect_to tags_path
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end

end
