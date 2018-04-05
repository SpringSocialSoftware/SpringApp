class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.text :title, null: false
      t.timestamps
    end
  end
end