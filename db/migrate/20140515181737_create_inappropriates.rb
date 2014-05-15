class CreateInappropriates < ActiveRecord::Migration
  def change
    create_table :inappropriates do |t|
      t.boolean :inappropriate

      t.timestamps
    end
  end
end
