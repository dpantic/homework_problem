class AddUserPostToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
  end

  def self.down
    remove_column :comments, :user_id
    remove_column :comments, :post_id
  end
end
