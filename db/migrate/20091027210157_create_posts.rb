class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.integer :parent_id
      t.string :parent_type
      t.boolean :public
      t.boolean :featured
      t.timestamps
    end
  end
  
  def self.down
    drop_table :posts
  end
end
