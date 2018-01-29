class ChangeAuthorToUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :author_id, :integer
    add_column :users, :user_id, :integer
  end
end
