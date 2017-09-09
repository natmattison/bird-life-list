class CreateInitialTables < ActiveRecord::Migration[5.1]
  def change
    create_table :birds do |t|
      t.text :name
      t.text :description
      t.timestamps null: false
    end

    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :password_hash
      t.text :email
      t.timestamps null: false
    end

    create_table :sightings do |t|
      t.references :bird
      t.references :user
      t.text :description
      t.timestamps null: false
    end

  end
end
