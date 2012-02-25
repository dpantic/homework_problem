class AddUserToPost < ActiveRecord::Migration
  def self.up
#    add_column :posts, :post_id, :integer
    add_column :posts, :user_id, :integer
  end

  def self.down
    remove_column :posts, :user_id
#    remove_column :posts, :post_id
  end
end
