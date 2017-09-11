class AddUsername < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :first_name, :text
    remove_column :users, :last_name, :text
    add_column :users, :username, :text, index: true, unique: true
  end
end
