class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :type
      t.integer :user_id
      t.integer :quip_id

      t.timestamps
    end
  end
end
