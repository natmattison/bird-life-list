class DropPasswordHash < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password_hash, :text
  end
end
