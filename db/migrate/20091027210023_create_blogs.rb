class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.boolean :private
      t.boolean :archived
      t.timestamps
    end
  end
  
  def self.down
    drop_table :blogs
  end
end
