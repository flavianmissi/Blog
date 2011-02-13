class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name, :limit => 70
      t.string :surname, :limit => 70
      t.string :username, :limit => 70
      t.string :email, :limit => 120
      t.string :user_type, :limit => 60

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
