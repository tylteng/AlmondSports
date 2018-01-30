class RemoveAuthorFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :author_id
  end
end
