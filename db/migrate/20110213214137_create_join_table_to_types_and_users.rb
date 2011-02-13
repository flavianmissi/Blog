class CreateJoinTableToTypesAndUsers < ActiveRecord::Migration
  def self.up
    create_table :types_users, :id => false do |t|
      t.integer :type_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :types_users
  end
end
