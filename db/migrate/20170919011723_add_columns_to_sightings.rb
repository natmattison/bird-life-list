class AddColumnsToSightings < ActiveRecord::Migration[5.1]
  def change
    add_column :sightings, :zip_code, :text
    add_column :sightings, :seen_at, :datetime
  end
end
