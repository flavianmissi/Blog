class ChangeAttributeNameToUrlFromPosts < ActiveRecord::Migration
  def self.up
    rename_column :posts, :name, :url
  end

  def self.down
    rename_column :posts, :url, :name
  end
end
