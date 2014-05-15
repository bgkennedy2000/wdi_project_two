class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :profile_pic
      t.string :password
      t.integer :reputation
      t.boolean :banned

      t.timestamps
    end
  end
end
