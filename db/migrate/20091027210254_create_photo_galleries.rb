class CreatePhotoGalleries < ActiveRecord::Migration
  def self.up
    create_table :photo_galleries do |t|
      t.string :title
      t.text :body
      t.integer :owner_id
      t.boolean :private
      t.boolean :archived
      t.timestamps
    end
  end
  
  def self.down
    drop_table :photo_galleries
  end
end
