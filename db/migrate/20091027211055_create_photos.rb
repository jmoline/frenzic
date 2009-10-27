class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :parent_id
      t.string :parent_type
      t.integer :owner_id
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.string :title
      t.boolean :public
      t.boolean :featured
      t.timestamps
    end
  end
  
  def self.down
    drop_table :photos
  end
end
