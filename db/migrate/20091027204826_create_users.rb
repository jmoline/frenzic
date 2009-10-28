class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :persistence_token, :null => false
      t.string :first_name
      t.string :last_name
      t.datetime :last_request_at
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
