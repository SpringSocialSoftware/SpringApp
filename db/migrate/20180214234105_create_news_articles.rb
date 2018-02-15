class CreateNewsArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :news_articles do |t|
      t.belongs_to :topic, null: false
      t.string :name, null: false
      t.string :author, null: false
      t.string :news_organization, null: false
      t.string :original_url, null: false
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
