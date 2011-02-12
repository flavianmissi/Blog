class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
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

  def edit
    @tag = Tag.new
  end

  def update
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "Tag updated"
      redirect_to tags_path
    else
      flash[:notice] = "Tag not updated. Try again later"
      redirect_to tags_path
    end
  end

end
