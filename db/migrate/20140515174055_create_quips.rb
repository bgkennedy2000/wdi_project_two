class CreateQuips < ActiveRecord::Migration
  def change
    create_table :quips do |t|
      t.text :message
      t.string :image
      t.integer :rating
      t.integer :jackass_count
      t.integer :user_id

      t.timestamps
    end
  end
end
