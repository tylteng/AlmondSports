class ChangeAuthorToUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :author_id, :integer
    add_column :articles, :user_id, :integer
  end
end
