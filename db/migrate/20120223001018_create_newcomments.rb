class CreateNewcomments < ActiveRecord::Migration
  def self.up
    create_table :newcomments do |t|
      t.text :body
      t.integer :body_id

      t.timestamps
    end
  end

  def self.down
    drop_table :newcomments
  end
end
