require 'test_helper'

class TagTest < ActiveSupport::TestCase
  def setup
    @tag = Tag.new(:title => "Computer Science")
  end

  test "if do not save a tag without the title" do
    @tag.title = nil
    assert !@tag.save, "Blog saved without title attribute"
  end

  test "if save a tag with the title" do
    assert @tag.save
  end
end
