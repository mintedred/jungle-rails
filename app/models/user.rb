class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |u|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.timestamps
    end
  end
end
