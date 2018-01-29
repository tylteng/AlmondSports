class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :author_id
      t.string :picture

      t.timestamps
    end
  end
end
