class CreateInsights < ActiveRecord::Migration[5.1]
  def change
    create_table :insights do |t|
      t.belongs_to :topic, null: false
      t.text :content, null: false
      t.integer :upvotes, null: false
      t.integer :downvotes, null: false
      t.integer :warnings, null: false
      t.boolean :user_upvoted, null: false
      t.boolean :user_downvoted, null: false
      t.boolean :user_warned, null: false
      t.timestamps
    end
  end
end
