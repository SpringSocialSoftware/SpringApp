class CreateNewsArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :news_articles do |t|
      t.belongs_to :topic
      t.text :title, null: false
      t.text :summary, null: false
      t.text :link, null: false
      t.text :author, null: false
      t.timestamps
    end
  end
end
