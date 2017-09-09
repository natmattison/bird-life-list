class AddBirdColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :birds, :scientific_name, :text
    add_column :birds, :order, :text
    add_column :birds, :family, :text
    add_column :birds, :species_group, :text
    add_column :birds, :common_name, :text, index: true, unique: true
    remove_column :birds, :name, :text
  end
end
